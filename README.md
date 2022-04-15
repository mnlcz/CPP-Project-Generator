# CPP-Project-Generator
Basic powershell script that generates CMake based C++ projects

# Parameters
- Project name.
- `-CMake` or `Make`: (OPTIONAL). If `CMake`, then you have 2 additional options
  - `Default`: uses default template.
  - `Boost`: uses boost template.

# Using *Boost* template
The template assumes that you have 2 enviroment variables.
- `BOOST`: base boost path.
- `BOOST_LIBS`: BOOST/stage/lib
