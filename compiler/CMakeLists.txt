cmake_minimum_required(VERSION 3.6)
project(compiler)

set(CMAKE_CXX_STANDARD 11)


include_directories(/usr/local/opt/llvm/include)
link_directories(/usr/local/opt/llvm/lib)

target_link_libraries(compiler)

set(SOURCE_FILES main.cc Emitter.cc PyEmitter.cc PyLLVMEmitter.cc)
add_executable(compiler ${SOURCE_FILES})

llvm_map_components_to_libnames(llvm_libs support core irreader)
