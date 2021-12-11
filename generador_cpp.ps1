Param
(
    # El parametro principal corresponde al nombre del proyecto
    [Parameter(Mandatory = $True, Position = 0)]
    [String]$Proyecto,

    # El segundo parametro corresponde al tipo de proyecto CMake
    [Parameter(Mandatory = $False, Position = 1)]
    [String]$CMake = "Default"
)

New-Item -Path . -Name $Proyecto -ItemType Directory
Set-Location ./$Proyecto

# Generando main.cpp
Copy-Item -Path $PSScriptRoot\Templates\C++\main.cpp -Destination .

# Generando CMakeLists.txt
switch ($CMake) 
{
    "Default" { Copy-Item -Path "$PSScriptRoot\Templates\CMake\Default\CMakeLists.txt" -Destination . }
    "Boost" { Copy-Item -Path "$PSScriptRoot\Templates\CMake\Boost\CMakeLists.txt" -Destination .  }
    Default
    {
        Clear-Host
        Write-Host "PROYECTO NO CREADO: error en el parametro -CMake"
        Set-Location ..
        Remove-item -Path ./$Proyecto -Recurse
        Exit
    }
}

New-Item -Path . -Name "build" -ItemType Directory
Clear-Host