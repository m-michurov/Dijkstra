#include "graph.h"


int FindDistance(
        Graph * graph,
        short end)
{
    if (graph == NULL)
        return 0;

    short v = 0;

    unsigned long long int current_distance = 0;
    unsigned int overflow_counter = 0;

    Heap * vertices_queue = NULL;

    if (graph->vertices && graph->edges)
    {
        vertices_queue = BuildHeap(graph->vertices_array, graph->distance, graph->indices, graph->vertices);

        if (vertices_queue == NULL)
            return ALLOC_ERROR;

        while (vertices_queue->heap_size > 0)
        {
            v = ExtractMin(vertices_queue);

            for (short u = 0; u < graph->vertices; u++)
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
                        graph->parent[u] = v;
                    }
                }
            }
        }
    }

    free(vertices_queue);

    return overflow_counter;
}
