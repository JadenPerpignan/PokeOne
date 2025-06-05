cmake_minimum_required(VERSION 3.31)
project(Pokedex)


set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find SQLite3
find_package(SQLite3 REQUIRED)

# Build from all .cpp files (don’t list headers here)
add_executable(Pokedex
        main.cpp
        DatabaseEngine.cpp
        Pokemon.cpp
)

# Make sqlite3.h visible
target_include_directories(Pokedex PRIVATE ${SQLite3_INCLUDE_DIRS})

# Link against SQLite3
target_link_libraries(Pokedex PRIVATE ${SQLite3_LIBRARIES})