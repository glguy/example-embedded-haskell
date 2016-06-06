#include <stdlib.h>
#include <stdio.h>

#include "include/library.h"


int main () {

        const char *example_source = "10*20+42";
        int result = run_haskell(example_source);
        printf("Result: %d\n", result);

        return 0;
}
