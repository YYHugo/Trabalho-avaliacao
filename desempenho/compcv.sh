g++ $1.cpp -o $1 `pkg-config opencv --cflags opencv --libs opencv`  

#gcc $1.c $1 $(pkg-config --cflags --libs opencv)
