#pragma once

#ifndef DIJKSTRA_GRAPH_H
#define DIJKSTRA_GRAPH_H

#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <stdio.h>


#include "errcodes.h"
#include "binheap.h"


#define NO_PARENT   -1
#define OVERFLOW    (unsigned int) INT_MAX + 1


typedef struct {
    unsigned int * adjacency_matrix;
    unsigned int * distance;
    unsigned int * indices;

    unsigned short * vertices_array;
    short * parent;

    unsigned int vertices;
    unsigned int edges;
} Graph;


void FreeGraph(
        void * graph);


Graph * InitGraph(
        unsigned int vertices,
        unsigned int edges,
        unsigned short vertex);


int FindDistance(
        Graph * graph,
        unsigned short end);


void PrintDistances(
        Graph * graph,
        unsigned short start,
        unsigned short end,
        unsigned int overflow);

#endif
