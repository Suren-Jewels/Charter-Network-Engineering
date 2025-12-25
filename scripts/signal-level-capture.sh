#!/bin/bash
# Signal Level Capture Script
# Sanitized for portfolio use.

echo "=== Charter Signal Level Capture ==="

timestamp=$(date +"%Y-%m-%d %H:%M:%S")
echo "Timestamp: $timestamp"

echo ""
echo "--- Downstream Levels ---"
echo "573 MHz: +2.1 dBmV"
echo "579 MHz: +1.8 dBmV"
echo "585 MHz: +1.5 dBmV"

echo ""
echo "--- Upstream Levels ---"
echo "36 MHz: 43.5 dBmV"
echo "29 MHz: 44.0 dBmV"

echo ""
echo "--- Notes ---"
echo "Slight downstream tilt observed."
echo "Upstream power trending high — possible plant attenuation."

echo ""
echo "Signal capture complete."
