bnc_name="smg2000" ;
lnk_name="$bnc_name.rbc" ;
prf_name="$bnc_name.ibc" ;
obj_name="$bnc_name.o" ;
exe_name="$bnc_name.exe" ;

source_files=( "HYPRE_pcg.c" "HYPRE_struct_grid.c" "HYPRE_struct_matrix.c" "HYPRE_struct_pcg.c" "HYPRE_struct_smg.c" "HYPRE_struct_stencil.c" "HYPRE_struct_vector.c" "box.c" "box_algebra.c" "box_alloc.c" "box_neighbors.c" "coarsen.c" "communication.c" "communication_info.c" "computation.c" "cyclic_reduction.c" "general.c" "grow.c" "memory.c" "mpistubs.c" "pcg.c" "pcg_struct.c" "point_relax.c" "project.c" "random.c" "semi_interp.c" "semi_restrict.c" "smg.c" "smg2000.c" "smg2_setup_rap.c" "smg3_setup_rap.c" "smg_axpy.c" "smg_relax.c" "smg_residual.c" "smg_setup.c" "smg_setup_interp.c" "smg_setup_rap.c" "smg_setup_restrict.c" "smg_solve.c" "struct_axpy.c" "struct_copy.c" "struct_grid.c" "struct_innerprod.c" "struct_io.c" "struct_matrix.c" "struct_matrix_mask.c" "struct_matvec.c" "struct_scale.c" "struct_stencil.c" "struct_vector.c" "threading.c" "timer.c" "timing.c" )
CXXFLAGS=" -I. -lm -D_POSIX_SOURCE -DHYPRE_TIMING -DHYPRE_SEQUENTIAL" ;

if [[ -n $LARGE_PROBLEM_SIZE ]]; then
  RUN_OPTIONS=" -n 100 40 100 -c 0.1 1.0 10.0 " ;
else
  RUN_OPTIONS=" -n 30 15 30 -c 0.1 1.0 10.0 " ;
fi
