#include <stdio.h>
#include "CGM_utils.h"
#include <mpi.h>

int main(int argc, char *argv[]) {
    MPI_Init(&argc, &argv);

    // Your main implementation here
    printf("Conjugate Gradient Method - Parallel Implementation\n");

    MPI_Finalize();
    return 0;
}