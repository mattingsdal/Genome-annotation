module load maker
module load openmpi.intel
export I_MPI_PMI_LIBRARY=/opt/slurm/lib64/libpmi.so
srun -A cees -n 100 --mem-per-cpu=2G --time=168:00:00 maker > maker.mpi.out 2> maker.mpi.err &

