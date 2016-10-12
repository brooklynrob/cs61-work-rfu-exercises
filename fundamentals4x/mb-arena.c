#include "membench.h"
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stddef.h>

/*

Write an arena allocator for `chunk` objects. Your allocator should:

* Allocate a chunk in O(1) time.
* Free a chunk in O(1) time.
* Use memory proportional to the peak number of actively allocated
chunks (rather than, say, the total number of allocated chunks).
* Run out of memory only if the system has no more memory available.

More on arenas:
https://en.wikipedia.org/wiki/Region-based_memory_management

See "membench.h" for function semantics.

*/

typedef union chunk_or_free {
     chunk c;
     union chunk_or_free* next;
} chunk_or_free;


//chunk is defined in membench.h as a struct with element, an array of char, based on a constant, chunksize, which is 8

#define GROUPSIZE 4096
typedef struct membench_group {
    int pos;
    chunk_or_free chunks[GROUPSIZE];
    struct membench_group* next;
} membench_group;

struct membench_arena {
    membench_group* group;
    chunk_or_free* free_list;
};


static membench_group* membench_group_new(void) {
    membench_group* g = (membench_group*) malloc(sizeof(membench_group));
    g->pos = 0;
    return g;
}

membench_arena* membench_arena_create(void) {
    membench_arena* arena = (membench_arena*) malloc(sizeof(membench_arena));
    arena->group = membench_group_new();
    arena->free_list = NULL;
    return arena;
}

chunk* membench_alloc(membench_arena* arena) {
    if (arena->free_list) {
        // pop a free chunk, return it
        chunk* result = &arena->free_list->c; //this is a pointer to a chunk for free
        //chunk* result = &arena->free_list.c; //would produce this error --> error: request for member ‘c’ in something not a structure or union
        //chunk* result = (chunk*) arena->free_list;      // alternative
        arena->free_list = arena->free_list->next;
        return result;

    }


    membench_group* g = arena->group;
    if (g->pos == GROUPSIZE) {
        // allocate new group, add it to singly-linked group list
        g = membench_group_new();
        g->next = arena->group;
        arena->group = g;
    }
    //chunk* result = (chunk*) &g->chunks[g->pos]; //need to cast this as (*chunk) since we've created the chunk_or_free
    chunk* result = (chunk*) &g->chunks[g->pos].c; //this is a chunk or free
    ++g->pos;
    return result;
}

void membench_free(membench_arena* arena, chunk* x) {
    chunk_or_free* cf = (chunk_or_free*) x;
    cf->next = arena->free_list;
    arena->free_list = cf;
    
    //put this on a list of things for allocation later
    
    (void) arena, (void) x;
}

void membench_arena_destroy(membench_arena* arena) {
    membench_group* g;
    while ((g = arena->group)) {
        arena->group = g->next;
        free(g);
    }
    free(arena);
}
