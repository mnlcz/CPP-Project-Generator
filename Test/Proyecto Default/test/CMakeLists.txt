add_executable(main_test main_test.cpp)
target_link_libraries(main_test main)

add_test(main_test main_test)
