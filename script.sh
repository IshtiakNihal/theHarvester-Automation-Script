#!/bin/bash

# Check if a domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN="$1"
OUTPUT_FILE="theHarvester_results_${DOMAIN}.txt"

# Use only supported sources
SOURCES="anubis,binaryedge,bing,brave,crtsh,duckduckgo,fullhunt,github-code,hackertarget,hunter,intelx,otx,projectdiscovery,securityTrails,threatminer,urlscan,virustotal"

echo "Starting theHarvester scan for: $DOMAIN"
echo "Results will be saved in: $OUTPUT_FILE"

# Run theHarvester with the corrected sources
theHarvester -d "$DOMAIN" -l 500 -b "$SOURCES" -f "$OUTPUT_FILE"

echo "Scan completed! Check the results in: $OUTPUT_FILE"