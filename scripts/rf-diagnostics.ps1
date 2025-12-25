<#
.SYNOPSIS
  RF Diagnostics Script
.DESCRIPTION
  Captures downstream/upstream levels, SNR, MER, and basic modem health.
  Sanitized for portfolio use.
#>

Write-Host "=== Charter RF Diagnostics ==="

# Simulated downstream levels
$downstream = @(
    @{Channel=1; Frequency="573 MHz"; Level="+2.1 dBmV"; SNR="38.7 dB"},
    @{Channel=2; Frequency="579 MHz"; Level="+1.8 dBmV"; SNR="38.5 dB"},
    @{Channel=3; Frequency="585 MHz"; Level="+1.5 dBmV"; SNR="38.2 dB"}
)

# Simulated upstream levels
$upstream = @(
    @{Channel=1; Frequency="36 MHz"; Power="43.5 dBmV"},
    @{Channel=2; Frequency="29 MHz"; Power="44.0 dBmV"}
)

Write-Host "`n--- Downstream ---"
$downstream | Format-Table -AutoSize

Write-Host "`n--- Upstream ---"
$upstream | Format-Table -AutoSize

Write-Host "`n--- Spectrum Check ---"
Write-Host "Minor ingress detected around 27–29 MHz"
Write-Host "No major suck-outs or tilt issues"

Write-Host "`nDiagnostics complete."
