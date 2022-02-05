//
// Created by petro on 05.02.2022.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "my_func_h.h"

int main() {
    size_t size = 5;
    int64_t *a = malloc(size * sizeof(int64_t));
    int64_t *b = malloc(size * sizeof(int64_t));
    int64_t *x = malloc(size * sizeof(int64_t));
    a[0] = 3;
    a[1] = 3;
    a[2] = 3;
    a[3] = -3;
    a[4] = 4;

    b[0] = 10;
    b[1] = 8;
    b[2] = -8;
    b[3] = 8;
    b[4] = 10;

    //printf("Here1");
    my_func(a, b, x, size);
    //printf("Here2");
    printf("Result is: %lld %lld %lld %lld %lld\n", x[0], x[1], x[2], x[3], x[4]);
    free(a);
    free(b);
    free(x);
    return 0;
}