# CPP-Project-Generator
Basic powershell script that generates CMake or Make based C++ projects

# Parameters
- Project name.
- Project type (OPTIONAL):
  - `Default`: uses default CMake template.
  - `Make`: uses make template
  - `Boost`: uses boost CMake template.

# Using *Boost* template
The template assumes that you have 2 enviroment variables.
- `BOOST`: base boost path.
- `BOOST_LIBS`: BOOST/stage/lib
