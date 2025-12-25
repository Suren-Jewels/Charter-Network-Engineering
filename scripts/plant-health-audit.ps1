<#
.SYNOPSIS
  Plant Health Audit
.DESCRIPTION
  Evaluates amplifier performance, node health, and noise indicators.
  Sanitized for portfolio use.
#>

Write-Host "=== Charter Plant Health Audit ==="

# Simulated amplifier metrics
$amplifiers = @(
    @{ID="AMP-01"; Input="+1.2 dBmV"; Output="+38.0 dBmV"; Temp="42°C"; Status="OK"},
    @{ID="AMP-02"; Input="+0.8 dBmV"; Output="+37.5 dBmV"; Temp="45°C"; Status="OK"},
    @{ID="AMP-03"; Input="-1.0 dBmV"; Output="+35.0 dBmV"; Temp="51°C"; Status="Warning"}
)

Write-Host "`n--- Amplifier Performance ---"
$amplifiers | Format-Table -AutoSize

# Simulated node health
$node = @{
    NoiseFloor = "-24 dBmV"
    OFDMA_Stability = "Stable"
    Congestion = "Low"
}

Write-Host "`n--- Node Health ---"
$node.GetEnumerator() | Format-Table -AutoSize

Write-Host "`n--- Observations ---"
Write-Host "AMP-03 temperature elevated — schedule inspection."
Write-Host "Noise floor acceptable for OFDMA operation."

Write-Host "`nPlant health audit complete."
