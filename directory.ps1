function Copy-Directory() {
  <#
    .SYNOPSIS
      Copying directory and contents to a new directory.
    .DESCRIPTION
  #>

  Copy-Item -Path "C:\Dir_OLD" -Destination "C:\Dir_NEW\Logs" -Recurse
}
