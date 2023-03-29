cmake_minimum_required (VERSION 3.16)

project ("")

set(CMAKE_CXX_STANDARD 20)

include_directories($ENV{BOOST})
link_libraries($ENV{BOOST_LIBS})

enable_testing()

include_directories(inc)
add_subdirectory(src)
add_subdirectory(test)
