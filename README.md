# CPP-Project-Generator
Basic powershell script that generates CMake based C++ projects

# Parameters
- Project name.
- Project type:
  - `Make`: uses make template
  - `Default`: uses default CMake template.
  - `Boost`: uses boost CMake template.

# Using *Boost* template
The template assumes that you have 2 enviroment variables.
- `BOOST`: base boost path.
- `BOOST_LIBS`: BOOST/stage/lib
