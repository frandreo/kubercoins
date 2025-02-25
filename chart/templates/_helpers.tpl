{{/*
Expand the name of the chart.
*/}}
{{- define "ns-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "ns-chart.labels" -}}
app.kubernetes.io/name: {{ include "ns-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

