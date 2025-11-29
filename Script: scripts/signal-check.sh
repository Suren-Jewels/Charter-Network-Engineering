#!/bin/bash
# Charter Cable Signal Check Script
# Author: Suren Jewels

echo "Running DOCSIS signal check..."

# Capture modem status (example local modem page; replace if needed)
modem_status=$(curl -s http://192.168.100.1/status || true)

# Extract key metrics (placeholder parsing; adapt to actual modem HTML)
downstream=$(echo "$modem_status" | grep -i "Downstream SNR" | awk '{print $NF}')
upstream=$(echo "$modem_status" | grep -i "Upstream SNR" | awk '{print $NF}')

echo "Downstream SNR: ${downstream:-N/A} dB"
echo "Upstream SNR: ${upstream:-N/A} dB"

# Threshold checks
if [[ -n "$downstream" ]] && (( ${downstream%.*} < 35 )); then
  echo "Warning: Downstream SNR below threshold!"
fi

if [[ -n "$upstream" ]] && (( ${upstream%.*} < 30 )); then
  echo "Warning: Upstream SNR below threshold!"
fi
# This script is illustrative. Real modem pages vary; adjust parsing to your device’s HTML or API.
