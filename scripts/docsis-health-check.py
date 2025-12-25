#!/usr/bin/env python3
"""
DOCSIS Health Check
Sanitized script for portfolio demonstration.
Evaluates modem bonding, correctables/uncorrectables, and ranging status.
"""

import time

print("=== Charter DOCSIS Health Check ===\n")

# Simulated modem metrics
modem_status = {
    "bonded_channels": 32,
    "ofdm_enabled": True,
    "correctables": 120,
    "uncorrectables": 3,
    "ranging_status": "Success",
    "upstream_power": 43.2
}

print("Bonded Channels:", modem_status["bonded_channels"])
print("OFDM Enabled:", modem_status["ofdm_enabled"])
print("Correctables:", modem_status["correctables"])
print("Uncorrectables:", modem_status["uncorrectables"])
print("Ranging Status:", modem_status["ranging_status"])
print("Upstream Power:", modem_status["upstream_power"], "dBmV")

# Basic evaluation
print("\n--- Evaluation ---")

if modem_status["uncorrectables"] < 10:
    print("Uncorrectables within acceptable range.")
else:
    print("High uncorrectables detected — investigate RF path.")

if modem_status["upstream_power"] > 48:
    print("Upstream power too high — check plant attenuation.")
else:
    print("Upstream power within normal range.")

print("\nDOCSIS health check complete.")
