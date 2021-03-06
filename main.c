#include <stdio.h>

#include "graph.h"
#include "ensure.h"


int main(
        void) {
    int src = 0;
    int dst = 0;
    int length = 0;
    int edges = 0;
    int vertices = 0;

    int start = 0;
    int end = 0;

    int result = 0;

    Graph * graph = NULL;

    ensure(scanf("%d", &vertices) != EOF, "bad number of lines", FreeGraph, graph, SUCCESS);
    ensure(scanf("%d %d", &start, &end) != EOF, "bad number of lines", FreeGraph, graph, SUCCESS);
    ensure(scanf("%d", &edges) != EOF, "bad number of lines", FreeGraph, graph, SUCCESS);

    ensure(start > 0 && start < vertices + 1 && end > 0 && end < vertices + 1, "bad vertex", FreeGraph, graph, SUCCESS);
    ensure(vertices >= 0 && vertices <= 5000, "bad number of vertices", FreeGraph, graph, SUCCESS);
    ensure(edges >= 0 && edges <= (vertices - 1) * vertices / 2, "bad number of edges", FreeGraph, graph, SUCCESS);

    start--;
    end--;

    graph = InitGraph((unsigned int) vertices, (unsigned int) edges, (unsigned short) start);

    ensure(graph != NULL, "memory allocation error", FreeGraph, graph, ALLOC_ERROR);

    for (int k = 0; k < graph->edges; k++)
    {
        ensure(scanf("%d %d %d", &src, &dst, &length) != EOF, "bad number of lines", FreeGraph, graph, SUCCESS);

        ensure(src > 0 && src < graph->vertices + 1 && dst > 0 && dst < graph->vertices + 1,
               "bad vertex", FreeGraph, graph, SUCCESS);
        ensure(length >= 0 && length <= INT_MAX, "bad length", FreeGraph, graph, SUCCESS);

        src--;
        dst--;

        graph->adjacency_matrix[src * (int) graph->vertices + dst] = (unsigned int) length;
        graph->adjacency_matrix[dst * (int) graph->vertices + src] = (unsigned int) length;
    }

    result = FindDistance(graph, (unsigned short) end);

    ensure(result != ALLOC_ERROR, "memory allocation error", FreeGraph, graph, ALLOC_ERROR);

    PrintDistances(graph, (unsigned short) start, (unsigned short) end, (unsigned int) result);

    FreeGraph(graph);

    return SUCCESS;
}