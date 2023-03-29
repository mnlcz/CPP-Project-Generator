Param
(
    # El parametro principal corresponde al nombre del proyecto
    [Parameter(Mandatory = $True, Position = 0)]
    [String]$Proyecto,
    
    # El segundo parametro corresponde al tipo de proyecto
    [Parameter(Mandatory = $False, Position = 1)]
    [String]$Tipo = "Default"
)

New-Item -ItemType Directory -Path $Proyecto
Set-Location ./$Proyecto

New-Item -ItemType Directory -Path src, inc, test 

# Generando src/main.cpp
Copy-Item -Path $PSScriptRoot\Templates\C++\main.cpp -Destination ./src

# Generando inc/main.hpp
Copy-Item -Path $PSScriptRoot\Templates\C++\main.hpp -Destination ./inc

# Generando test/main_test.cpp
Copy-Item -Path $PSScriptRoot\Templates\C++\main_test.cpp -Destination ./test

# Generando CMakeLists.txt o Makefile
Copy-Item -Path "$PSScriptRoot\Templates\CMake\CMakeLists_src.txt" -Destination src/CMakeLists.txt
Copy-Item -Path "$PSScriptRoot\Templates\CMake\CMakeLists_test.txt" -Destination test/CMakeLists.txt
switch ($Tipo) {
    "Default" { 
        Copy-Item -Path "$PSScriptRoot\Templates\CMake\Default\CMakeLists.txt" -Destination .
    }
    "Boost" { 
        Copy-Item -Path "$PSScriptRoot\Templates\CMake\Boost\CMakeLists.txt" -Destination .
    }
    Default {
        Write-Host "PROYECTO NO CREADO: error en el parametro -CMake"
        Set-Location ..
        Remove-item -Path ./$Proyecto -Recurse
        Exit
    }
}

New-Item -ItemType Directory -Path "build"
