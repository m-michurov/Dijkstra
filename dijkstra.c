#include "graph.h"


int FindDistance(
        Graph * graph,
        unsigned short end)
{
    ensure(graph != NULL, "invalid input parameter value: graph is NULL pointer", FreeGraph, graph, ALLOC_ERROR);

    unsigned short v = 0;

    unsigned long long int current_distance = 0;
    unsigned int overflow_counter = 0;

    Heap * vertices_queue = NULL;

    if (graph->vertices && graph->edges)
    {
        vertices_queue = BuildHeap(graph->vertices_array, graph->distance, graph->indices, graph->vertices);

        ensure(vertices_queue != NULL, "unable to allocate memory for vertices queue", FreeGraph, graph, ALLOC_ERROR);

        while (vertices_queue->heap_size > 0)
        {
            v = (unsigned short) ExtractMin(vertices_queue);

            for (unsigned short u = 0; u < graph->vertices; u++)
            {
                if (graph->adjacency_matrix[v * graph->vertices + u] != UINT_MAX
                    && vertices_queue->index[u] < vertices_queue->heap_size)
                {
                    current_distance = graph->adjacency_matrix[v * graph->vertices + u] + graph->distance[v];

                    if (current_distance >= OVERFLOW || graph->distance[v] >= OVERFLOW)
                    {
                        current_distance = OVERFLOW;

                        if (u == end)
                            overflow_counter += 1;
                    }

                    if (current_distance < graph->distance[u])
                    {
                        DecreaseKey(vertices_queue, u, (unsigned int) current_distance);
                        graph->parent[u] = (short) v;
                    }
                }
            }
        }
    }

    free(vertices_queue);

    return overflow_counter;
}
