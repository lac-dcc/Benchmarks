//------------------------------------------------------------------------------------------------------------------------------
// Samuel Williams
// SWWilliams@lbl.gov
// Lawrence Berkeley National Lab
//------------------------------------------------------------------------------------------------------------------------------
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//------------------------------------------------------------------------------------------------------------------------------
#include "box.h"
#include "defines.h"
#include "mg.h"
#include "timer.h"
//------------------------------------------------------------------------------------------------------------------------------
#include "exchange_boundary.inc"
#include "jacobi.inc"
#include "lambda.inc"
//#include "operators.ompif/gsrb.inc"
//#include "operators.ompif/chebyshev.inc"
#include "apply_op.inc"
#include "interpolation.inc"
#include "matmul.inc"
#include "misc.inc"
#include "problem1.inc"
#include "residual.inc"
#include "restriction.inc"
//#include "operators.ompif/problem2.inc"
//------------------------------------------------------------------------------------------------------------------------------
