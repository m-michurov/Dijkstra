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

    ensure(scanf("%d", &vertices) == 1, "bad number of lines", NULL, NULL, SUCCESS);
    ensure(scanf("%d %d", &start, &end) == 2, "bad number of lines", NULL, NULL, SUCCESS);
    ensure(scanf("%d", &edges) == 1, "bad number of lines", NULL, NULL, SUCCESS);

    ensure(start > 0 && start < vertices + 1 && end > 0 && end < vertices + 1, "bad vertex", NULL, NULL, SUCCESS);
    ensure(vertices >= 0 && vertices <= 5000, "bad number of vertices", NULL, NULL, SUCCESS);
    ensure(edges >= 0 && edges <= (vertices - 1) * vertices / 2, "bad number of edges", NULL, NULL, SUCCESS);

    start--;
    end--;

    graph = InitGraph((unsigned int) vertices, (unsigned int) edges, (short) start);

    ensure(graph != NULL, "memory allocation error", NULL, NULL, ALLOC_ERROR);

    for (int k = 0; k < graph->edges; k++)
    {
        ensure(scanf("%d %d %d", &src, &dst, &length) == 3, "bad number of lines", FreeGraph, graph, SUCCESS);

        ensure(src > 0 && src < graph->vertices + 1 && dst > 0 && dst < graph->vertices + 1,
               "bad vertex", FreeGraph, graph, SUCCESS);
        ensure(length >= 0 && length <= INT_MAX, "bad length", FreeGraph, graph, SUCCESS);

        src--;
        dst--;

        graph->adjacency_matrix[src * (int) graph->vertices + dst] = (unsigned int) length;
        graph->adjacency_matrix[dst * (int) graph->vertices + src] = (unsigned int) length;
    }

    result = FindDistance(graph, (short) end);

    ensure(result != ALLOC_ERROR, "memory allocation error", FreeGraph, graph, ALLOC_ERROR);

    PrintDistances(graph, (short) start, (short) end, (unsigned int) result);

    FreeGraph(graph);

    return SUCCESS;
}