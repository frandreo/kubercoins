{{/*
Expand the name of the chart.
*/}}
{{- define "ns-chart.labels" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
