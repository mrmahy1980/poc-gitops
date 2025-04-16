{{- define "openedi.name" -}}
openedi
{{- end -}}

{{- define "openedi.fullname" -}}
{{ include "openedi.name" . }}
{{- end -}}
