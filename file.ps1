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

function Get-Size() {
  <#
    .SYNOPSIS
      Get file size in KB, MB, GB and TB.
    .DESCRIPTION
  #>

  $File = 'C:\File.txt'

  (Get-Item "$($File)").Length      # Size in bytes.
  (Get-Item "$($File)").Length/1KB  # Size in KB.
  (Get-Item "$($File)").Length/1MB  # Size in MB.
  (Get-Item "$($File)").Length/1GB  # Size in GB.
  (Get-Item "$($File)").Length/1TB  # Size in TB.
}

function Get-Version() {
  <#
    .SYNOPSIS
      Get file version.
    .DESCRIPTION
  #>

  $File = 'C:\File.txt'

  (Get-Command "$($File)").FileVersionInfo.FileVersion
}

function Get-Attributes() {
  <#
    .SYNOPSIS
      Get file attributes.
    .DESCRIPTION
  #>

  $File = 'C:\File.txt'

  Get-Item "$($File)" | Format-List -Property * -Force
}
