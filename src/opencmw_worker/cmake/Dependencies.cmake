include(FetchContent)

FetchContent_Declare(
        opencmw-cpp
        GIT_REPOSITORY https://github.com/fair-acc/opencmw-cpp.git
        GIT_TAG d4417d6e48fe699d5e0daae1cb1736c8ffb27bf8
)

# FetchContent_Declare(
#         cppflow
#         GIT_REPOSITORY https://github.com/serizba/cppflow.git
#         GIT_TAG v2.0.0 
# )

FetchContent_MakeAvailable(opencmw-cpp)
#FetchContent_MakeAvailable(cppflow)

FetchContent_MakeAvailable(catch2)
list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/contrib)