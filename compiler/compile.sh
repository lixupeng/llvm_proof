g++ -O3 -std=c++11 `llvm-config-5.0 --cxxflags --ldflags --libs --libfiles --system-libs  all` -lLLVMSupport *.cc -o gen_py

