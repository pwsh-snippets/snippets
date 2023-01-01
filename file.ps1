function Get-CreationTimeSeconds() {
  <#
    .SYNOPSIS
      Find files by creation date (seconds).
    .DESCRIPTION
  #>

  $Location = "$(Get-Location)"
  $Seconds = 5

  Get-ChildItem -Path "$($Location)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.CreationTime -gt (Get-Date).AddSeconds(-$($Seconds))) }
}

function Get-CreationTimeDays() {
  <#
    .SYNOPSIS
      Find files by creation date (days).
    .DESCRIPTION
  #>

  $Location = "$(Get-Location)"
  $Days = 30

  Get-ChildItem -Path "$($Location)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.CreationTime -gt (Get-Date).AddDays(-$($Days))) }
}

function Get-LastWriteTimeSeconds() {
  <#
    .SYNOPSIS
      Find files by last modified date (seconds).
    .DESCRIPTION
  #>

  $Location = "$(Get-Location)"
  $Seconds = 5

  Get-ChildItem -Path "$($Location)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.LastWriteTime -gt (Get-Date).AddSeconds(-$($Seconds))) }
}

function Get-LastWriteTimeDays() {
  <#
    .SYNOPSIS
      Find files by last modified date (days).
    .DESCRIPTION
  #>

  $Location = "$(Get-Location)"
  $Days = 30

  Get-ChildItem -Path "$($Location)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.LastWriteTime -gt (Get-Date).AddDays(-$($Days))) }
}
