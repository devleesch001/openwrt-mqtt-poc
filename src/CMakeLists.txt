cmake_minimum_required(VERSION 2.6)
project(poc_mqtt)

add_executable(poc_mqtt main.c)
target_link_libraries(poc_mqtt mosquitto)

INSTALL(TARGETS poc_mqtt RUNTIME DESTINATION /usr/bin/)
