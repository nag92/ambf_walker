#ifndef __c1_sliding_controller_rbdl_h__
#define __c1_sliding_controller_rbdl_h__

/* Forward Declarations */
struct SFc1_sliding_controller_rbdlInstanceStruct;

/* Type Definitions */
#ifndef typedef_c1_sliding_controller_rbdlStackData
#define typedef_c1_sliding_controller_rbdlStackData

typedef struct {
} c1_sliding_controller_rbdlStackData;

#endif                                 /* typedef_c1_sliding_controller_rbdlStackData */

#ifndef struct_SFc1_sliding_controller_rbdlInstanceStruct
#define struct_SFc1_sliding_controller_rbdlInstanceStruct

struct SFc1_sliding_controller_rbdlInstanceStruct
{
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint8_T c1_is_active_c1_sliding_controller_rbdl;
  uint8_T c1_JITStateAnimation[1];
  uint8_T c1_JITTransitionAnimation[1];
  void *c1_fEmlrtCtx;
  real_T (*c1_q)[2];
  real_T (*c1_knee)[2];
  real_T (*c1_dknee)[2];
  real_T (*c1_qd)[2];
  real_T (*c1_ankle)[2];
  real_T (*c1_danke)[2];
};

#endif                                 /* struct_SFc1_sliding_controller_rbdlInstanceStruct */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray
  *sf_c1_sliding_controller_rbdl_get_eml_resolved_functions_info();

/* Function Definitions */
extern void sf_c1_sliding_controller_rbdl_get_check_sum(mxArray *plhs[]);
extern void c1_sliding_controller_rbdl_method_dispatcher(SimStruct *S, int_T
  method, void *data);

#endif
