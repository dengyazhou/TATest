cmake_minimum_required(VERSION 3.24)
project(TATest_cpp)

set(CMAKE_CXX_STANDARD 17)

add_executable(TATest_cpp main.cpp)


include_directories(cpp/include)
if (CMAKE_HOST_APPLE)
    find_library(COCOA Cocoa)
    find_library(IOKIT IOKit)
    add_library(thinkingdata cpp/src/ta_analytics_sdk.cpp cpp/src/ta_cpp_helper.cpp cpp/src/ta_cpp_network.cpp cpp/src/ta_cpp_utils.cpp cpp/src/ta_sqlite.cpp cpp/src/ta_timer.cpp cpp/src/ta_event_task.cpp cpp/src/ta_cpp_send.cpp cpp/src/ta_json_object.cpp cpp/src/ta_cJSON.c cpp/src/ta_mac_tool.mm)
    target_link_libraries(thinkingdata curl z sqlite3 ${COCOA} ${IOKIT})

endif()
