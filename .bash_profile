# I can't stand it, it must start with a comment

echo "Good morning"

alias gs='git status'

export EDITOR=vi

# This is an ingest key. You can steal it, but all you can do with it is
# send data to my Honeycomb account. This would be annoying to me, but not
# harmful, and no benefit to the person doing it.
export CLAUDE_CODE_OUTPUT_HONEYCOMB_API_KEY=hcaik_01k1y42mbg8qs650rajqsqybp53w4sxhjdsz84bb3esh92et7nz4c2x60b
claude() {
    echo "Running claude with stats sent to modernity/claude-code $CLAUDE_CODE_OUTPUT_HONEYCOMB_API_KEY"
    OTEL_SERVICE_NAME="claude-code" \
    OTEL_EXPORTER_OTLP_HEADERS="x-honeycomb-team=$CLAUDE_CODE_OUTPUT_HONEYCOMB_API_KEY,x-honeycomb-dataset=claude_code_metrics" \
 CLAUDE_CODE_ENABLE_TELEMETRY=1 \
OTEL_METRICS_EXPORTER="otlp" \
OTEL_LOGS_EXPORTER="otlp" \
OTEL_EXPORTER_OTLP_PROTOCOL=grpc \
OTEL_EXPORTER_OTLP_ENDPOINT="api.honeycomb.io:443" \
OTEL_LOG_USER_PROMPTS=1 \
    command claude "$@"
}
