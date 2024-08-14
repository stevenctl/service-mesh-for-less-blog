{{/* vim: set filetype=mustache: */}}

{{/*
Validate a duration string.
*/}}
{{- define "gloofed.validateDuration" }}
{{- if not (kindIs "invalid" .) }}{{/* only check non-null/non-empty values */}}
{{- $dur := toString . }}{{/* converts input to string; needed to handle "0" which is a valid duration string */}}
{{- $_ := now | mustDateModify $dur }}{{/* try modifying the date `now` with the given duration; returns error on invalid duration */}}
{{- if hasPrefix "-" $dur }}{{/* don't allow negative values */}}
{{- fail (printf "invalid duration %s: must be positive" $dur) }}
{{- else }}
{{- . }}{{/* if everything's good, return the original value */}}
{{- end }}{{/* if hasPrefix "-" $dur */}}
{{- end }}{{/* if not (kindIs "invalid" .) */}}
{{- end }}


{{/*
  gloofed.podSpecStandardFields is duplicated from the gloo codebase.
  TODO(sheidkamp) will look for a way to reuse/import those charts.
*/}}
{{- define "gloofed.podSpecStandardFields" -}}
{{- with .nodeName -}}
nodeName: {{ . }}
{{ end -}}
{{- with .nodeSelector -}}
nodeSelector: {{ toYaml . | nindent 2 }}
{{ end -}}
{{- with .tolerations -}}
tolerations: {{ toYaml . | nindent 2 }}
{{ end -}}
{{- with .hostAliases -}}
hostAliases: {{ toYaml . | nindent 2 }}
{{ end -}}
{{- with .affinity -}}
affinity: {{ toYaml . | nindent 2 }}
{{ end -}}
{{- with .restartPolicy -}}
restartPolicy: {{ . }}
{{ end -}}
{{- with .priorityClassName -}}
priorityClassName: {{ . }}
{{ end -}}
{{- with .initContainers -}}
initContainers: {{ toYaml . | nindent 2 }}
{{ end -}}
{{- end -}}



{{/*
  gloofed.securityContext is duplicated from the gloo codebase.
  TODO(sheidkamp) will look for a way to reuse/import those charts.
*/}}
{{- /*
This template is used to generate the gloo pod or container security context.
It takes 4 values:
  .values - the securityContext passed from the user in values.yaml
  .defaults - the default securityContext for the pod or container
  .globalSec - global security settings, usually from .Values.global.securitySettings
  .indent - the number of spaces to indent the output. If not set, the output will not be indented.
    The indentation argument is necessary because it is possible that no output will be rendered. 
    If that happens and the caller handles the indentation the result will be a line of whitespace, which gets caught by the whitespace tests

  Depending upon the value of .values.merge, the securityContext will be merged with the defaults or completely replaced.
  In a merge, the values in .values will override the defaults, following the logic of helm's merge function.
Because of this, if a value is "true" in defaults it can not be modified with this method.
*/ -}}
{{- define "gloofed.securityContext" }}
{{- /* Move input parameters to non-null variables */ -}}
{{- $defaults := dict -}}
{{- if .defaults -}}
  {{- $defaults = .defaults -}}
{{- end -}}
{{- $values := dict -}}
{{- if .values -}}
  {{- $values = .values -}}
{{- end -}}
{{- $globalSec := dict -}}
{{- if .globalSec -}}
  {{- $globalSec = .globalSec -}}
{{- end -}}
{{ $indent := 0}}
{{- if .indent -}}
  {{- $indent = .indent -}}
{{- end -}}
{{- /* create $overwrite and set it based on the merge-policy */ -}}
{{- $overwrite := true -}}
{{- if $values.mergePolicy }}
  {{- if eq $values.mergePolicy "helm-merge" -}}
    {{- $overwrite = false -}}
  {{- else if ne $values.mergePolicy "no-merge" -}}
    {{- fail printf "value '%s' is not an allowed value for mergePolicy. Allowed values are 'no-merge', 'helm-merge', or an empty string" $values.mergePolicy }}
  {{- end -}}
{{- end -}}
{{- /* create $securityContext and combine with $defaults based on teh value of $overwrite */ -}}
{{- $securityContext := dict -}}
{{- if $overwrite -}}
  {{- $securityContext = or $values $defaults (dict) -}}
{{- else -}}
  {{- $securityContext = merge $values $defaults -}}
{{- end }}
{{- /* Apply global overrides */ -}}
{{- with $globalSec -}}
  {{- if .floatingUserId -}}
    {{- $_ := unset $securityContext "runAsUser" -}}
  {{- end -}}
{{- end -}}
{{- /* Remove "mergePolicy" if it exists because it is not a part of the kubernetes securityContext definition */ -}}
{{- $securityContext = omit $securityContext "mergePolicy" -}}
{{- with $securityContext -}}
  {{- $toRender := dict "securityContext" $securityContext -}}
  {{- toYaml $toRender | nindent $indent -}}
{{- end }}
{{- end }}


{{/*
  gloofed.containerSecurityContext is duplicated from the gloo codebase.
  TODO(sheidkamp) will look for a way to reuse/import those charts.
*/}}
{{- /*
This template is used to generate the container security context.
It takes 4 values:
  .values - the securityContext passed from the user in values.yaml
  .defaults - the default securityContext for the pod or container
  .podSecurityStandards - podSecurityStandard from values.yaml
  .globalSec - global security settings, usually from .Values.global.securitySettings
  .indent - the number of spaces to indent the output. If not set, the output will not be indented.
    The indentation argument is necessary because it is possible that no output will be rendered. 
    If that happens and the caller handles the indentation the result will be a line of whitespace, which gets caught by the whitespace tests

  If .podSecurityStandards.container.enableRestrictedContainerDefaults is true, the defaults will be set to a restricted set of values.
  .podSecurityStandards.container.defaultSeccompProfileType can be used to set the seccompProfileType.
*/ -}}
{{- define "gloofed.containerSecurityContext" -}}
{{- /* Move input parameters to non-null variables */ -}}
{{- $defaults := dict -}}
{{- if .defaults -}}
  {{- $defaults = .defaults -}}
{{- end -}}
{{- $values := dict -}}
{{- if .values -}}
  {{- $values = .values -}}
{{- end -}}
{{ $indent := 0}}
{{- if .indent -}}
  {{- $indent = .indent -}}
{{- end -}}
{{ $pss := dict }}
{{- if .podSecurityStandards -}}
  {{- $pss = .podSecurityStandards -}}
{{- end -}}
{{- /* set default seccompProfileType */ -}}

{{- $pss_restricted_defaults := dict 
    "runAsNonRoot" true
    "capabilities" (dict "drop" (list "ALL"))
    "allowPrivilegeEscalation" false }}
{{- /* set defaults if appropriate */ -}}
{{- if $pss.container -}}
  {{/* Set the default seccompProfileType */}}
  {{- $defaultSeccompProfileType := "RuntimeDefault"}}
  {{- if $pss.container.defaultSeccompProfileType -}}
    {{- $defaultSeccompProfileType = $pss.container.defaultSeccompProfileType -}}
    {{- if and (ne $defaultSeccompProfileType "RuntimeDefault") (ne $defaultSeccompProfileType "Localhost") -}}
      {{- fail printf "value '%s' is not an allowed value for defaultSeccompProfileType. Allowed values are 'RuntimeDefault' or 'Localhost'" . }}
    {{- end -}}
  {{- end -}}
  {{- $_ := set $pss_restricted_defaults  "seccompProfile" (dict "type" $defaultSeccompProfileType) -}}
  {{- if $pss.container.enableRestrictedContainerDefaults -}}
    {{- $defaults = merge $defaults $pss_restricted_defaults -}}
  {{- end -}}
{{- end -}}
{{- /* call general securityContext template */ -}}
{{- include "gloofed.securityContext" (dict 
            "values" $values
            "defaults" $defaults
            "indent" $indent
            "globalSec" .globalSec) -}}
{{- end -}}


{{- /*
Note, although much of this code is duplicated from the "gloo.image" helper defined in the gloo OSS chart,
we cannot call that helper directly from gloo-fed since the gloo-fed chart can be installed independently of
gloo-ee (in which case the gloo helper functions won't exist).
*/ -}}
{{- define "gloofed.image" -}}
{{- $image := printf "%s/%s" .registry .repository -}}

{{- /*
add tag, if it exists
*/ -}}
{{- if .tag -}}
{{- $image = printf "%s:%s" $image .tag -}}
{{- end -}}{{- /* if .tag */ -}}

{{- /*
for distroless or fips-distroless variants: add -distroless to the tag
Since fed does not have a fips variant and we check the global.image.variant that controls image variants across all charts,
we install the NON FIPS distroless variant of fed if the user specifies the variant as fips-distroless
*/ -}}
{{- if and .tag (has .variant (list "distroless" "fips-distroless")) -}}
{{- $distrolessSupportedImages := list "gloo-fed" "gloo-fed-apiserver" "gloo-fed-rbac-validating-webhook" "gloo-federation-console" "gloo-fed-apiserver-envoy" -}}
{{- if (has .repository $distrolessSupportedImages) -}}
{{- $image = printf "%s-distroless" $image -}}{{- /* Add distroless suffix to the tag since it contains the same binaries in a different container */ -}}
{{- end -}}{{- /* if (has .repository $distrolessSupportedImages) */ -}}
{{- end -}}{{- /* if and .tag (has .variant (list "distroless" "fips-distroless")) */ -}}

{{- /*
add digest for the chosen variant, if it exists
*/ -}}
{{- if or .fips (eq .variant "fips") -}}
  {{- if .fipsDigest -}}
    {{- $image = printf "%s@%s" $image .fipsDigest -}}
  {{- end -}}{{- /* if .fipsDigest */ -}}
{{- else if eq .variant "distroless" -}}
  {{- if .distrolessDigest -}}
    {{- $image = printf "%s@%s" $image .distrolessDigest -}}
  {{- end -}}{{- /* if .distrolessDigest */ -}}
{{- else if eq .variant "fips-distroless" -}}
  {{- if .fipsDistrolessDigest -}}
    {{- $image = printf "%s@%s" $image .fipsDistrolessDigest -}}
  {{- end -}}{{- /* if .fipsDistrolessDigest */ -}}
{{- else -}}
  {{- if .digest -}}{{- /* standard image digest */ -}}
    {{- $image = printf "%s@%s" $image .digest -}}
  {{- end -}}{{- /* if .digest */ -}}
{{- end -}}
{{ $image }}
{{- end -}}{{- /* define "gloofed.image" */ -}}


{{/* Additional labels added to every resource */}}
{{- define "gloofed.labels" -}}
app: gloo-fed
{{- with .Values.global.additionalLabels | default dict }}
{{ toYaml . }}
{{- end }}
{{- end }}
