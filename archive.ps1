function Compress-RAR() {
  <#
    .SYNOPSIS
      Compress 'RAR' archive.
    .DESCRIPTION
  #>

  ForEach ($File in (Get-ChildItem "*.txt")) {
    & "$($env:ProgramFiles)\WinRAR\Rar.exe" a "$($File.Name + '.rar')" "$($File.FullName)"
  }
}

function Expand-RAR() {
  <#
    .SYNOPSIS
      Expand 'RAR' archive.
    .DESCRIPTION
  #>

  ForEach ($File in (Get-ChildItem "*.rar")) {
    & "$($env:ProgramFiles)\WinRAR\Rar.exe" x "$($File.FullName)"
  }
}

function Compress-7z() {
  <#
    .SYNOPSIS
      Compress '7z' archive.
    .DESCRIPTION
  #>

  ForEach ($File in (Get-ChildItem "*.txt")) {
    & "$($env:ProgramFiles)\7-Zip\7z.exe" a "$($File.Name + '.7z')" "$($File.FullName)"
  }
}

function Expand-7z() {
  <#
    .SYNOPSIS
      Expand '7z' archive.
    .DESCRIPTION
  #>

  ForEach ($File in (Get-ChildItem "*.7z")) {
    & "$($env:ProgramFiles)\7-Zip\7z.exe" x "$($File.FullName)"
  }
}
