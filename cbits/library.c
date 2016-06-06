#include <stdlib.h>
#include <HsFFI.h>
#include <Library_stub.h>

int run_haskell(const char* src) {
        hs_init(NULL,NULL);
        return runHaskellC((HsPtr)src);
}
