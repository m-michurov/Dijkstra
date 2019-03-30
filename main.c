#include <stdio.h>

#include "graph.h"


int main(
        void) {
    int src = 0;
    int dst = 0;
    int length = 0;
    int edges = 0;
    int vertices = 0;

    int start = 0;
    int end = 0;

    unsigned int overflow = 0;

    Graph * graph = NULL;

    if (scanf("%d", &vertices) == EOF) {
        puts("bad number of lines");
        return SUCCESS;
    }
    if (scanf("%d %d", &start, &end) == EOF) {
        puts("bad number of lines");
        return SUCCESS;
    }
    if (!(start > 0 && start < vertices + 1) || !(end > 0 && end < vertices + 1)) {
        puts("bad vertex");
        return SUCCESS;
    }
    if (scanf("%d", &edges) == EOF) {
        puts("bad number of lines");
        return SUCCESS;
    }

    start--;
    end--;

    if (!(vertices >= 0 && vertices <= 5000)) {
        puts("bad number of vertices");
        return SUCCESS;
    }
    if (!(edges >= 0 && edges <= (vertices - 1) * vertices / 2)) {
        puts("bad number of edges");
        return SUCCESS;
    }

    graph = InitGraph((unsigned int) vertices, (unsigned int) edges, (short) start);

    if (graph == NULL) {
        puts("memory allocation error");
        return ALLOC_ERROR;
    }


    for (int k = 0; k < graph->edges; k++) {
        if (scanf("%d %d %d", &src, &dst, &length) == EOF) {
            puts("bad number of lines");
            FreeGraph(graph);
            return SUCCESS;
        }
        if (!(src > 0 && src < graph->vertices + 1) || !(dst > 0 && dst < graph->vertices + 1)) {
            puts("bad vertex");
            FreeGraph(graph);
            return SUCCESS;
        }
        if (!(length >= 0 && length <= INT_MAX)) {
            puts("bad length");
            FreeGraph(graph);
            return SUCCESS;
        }

        src--;
        dst--;

        graph->adjacency_matrix[src * graph->vertices + dst] = (unsigned int) length;
        graph->adjacency_matrix[dst * graph->vertices + src] = (unsigned int) length;
    }


    overflow = FindDistance(graph, (short) end);

    PrintDistances(graph, (short) start, (short) end, overflow);

    FreeGraph(graph);

    return SUCCESS;
}