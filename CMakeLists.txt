cmake_minimum_required(VERSION 3.12)
project(Dijkstra C)

set(CMAKE_C_STANDARD 11)

add_executable(Dijkstra main.c graph.c graph.h dijkstra.c binheap.c binheap.h errcodes.h ensure.h)