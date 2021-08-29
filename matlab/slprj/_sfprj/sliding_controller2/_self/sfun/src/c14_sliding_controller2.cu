/* Include files */

#include "sliding_controller2_sfun.h"
#include "c14_sliding_controller2.h"
#include "mwmathutil.h"
#ifdef utFree
#undef utFree
#endif

#ifdef utMalloc
#undef utMalloc
#endif

#ifdef __cplusplus

extern "C" void *utMalloc(size_t size);
extern "C" void utFree(void*);

#else

extern void *utMalloc(size_t size);
extern void utFree(void*);

#endif

/* Forward Declarations */

/* Type Definitions */

/* Named Constants */
const int32_T CALL_EVENT = -1;

/* Variable Declarations */

/* Variable Definitions */
static real_T _sfTime_;

/* Function Declarations */
static void initialize_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void initialize_params_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void enable_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void disable_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void c14_do_animation_call_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void ext_mode_exec_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static const mxArray *get_sim_state_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void set_sim_state_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance, const mxArray *c14_st);
static void sf_gateway_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void mdl_start_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void mdl_terminate_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void mdl_setup_runtime_resources_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void mdl_cleanup_runtime_resources_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void initSimStructsc14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance);
static void c14_eML_blk_kernel(SFc14_sliding_controller2InstanceStruct
  *chartInstance, real_T c14_b_q[2], real_T c14_b_y[4]);
static void c14_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_b_y, const char_T *c14_identifier, real_T
  c14_c_y[4]);
static void c14_b_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_u, const emlrtMsgIdentifier *c14_parentId,
  real_T c14_b_y[4]);
static uint8_T c14_c_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_b_is_active_c14_sliding_controller2, const
  char_T *c14_identifier);
static uint8_T c14_d_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_u, const emlrtMsgIdentifier *c14_parentId);
static void init_dsm_address_info(SFc14_sliding_controller2InstanceStruct
  *chartInstance);
static void init_simulink_io_address(SFc14_sliding_controller2InstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  emlrtLicenseCheckR2012b(chartInstance->c14_fEmlrtCtx, (const char_T *)
    "distrib_computing_toolbox", 2);
  sim_mode_is_external(chartInstance->S);
  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c14_is_active_c14_sliding_controller2 = 0U;
  cudaGetLastError();
}

static void initialize_params_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
}

static void enable_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void c14_do_animation_call_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  sfDoAnimationWrapper(chartInstance->S, false, true);
  sfDoAnimationWrapper(chartInstance->S, false, false);
}

static void ext_mode_exec_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
}

static const mxArray *get_sim_state_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  const mxArray *c14_b_y = NULL;
  const mxArray *c14_c_y = NULL;
  const mxArray *c14_d_y = NULL;
  const mxArray *c14_st;
  c14_st = NULL;
  c14_b_y = NULL;
  sf_mex_assign(&c14_b_y, sf_mex_createcellmatrix(2, 1), false);
  c14_c_y = NULL;
  sf_mex_assign(&c14_c_y, sf_mex_create("y", *chartInstance->c14_y, 0, 0U, 1U,
    0U, 2, 2, 2), false);
  sf_mex_setcell(c14_b_y, 0, c14_c_y);
  c14_d_y = NULL;
  sf_mex_assign(&c14_d_y, sf_mex_create("y",
    &chartInstance->c14_is_active_c14_sliding_controller2, 3, 0U, 0U, 0U, 0),
                false);
  sf_mex_setcell(c14_b_y, 1, c14_d_y);
  sf_mex_assign(&c14_st, c14_b_y, false);
  return c14_st;
}

static void set_sim_state_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance, const mxArray *c14_st)
{
  const mxArray *c14_u;
  c14_u = sf_mex_dup(c14_st);
  c14_emlrt_marshallIn(chartInstance, sf_mex_dup(sf_mex_getcell(c14_u, 0)), "y",
                       *chartInstance->c14_y);
  chartInstance->c14_is_active_c14_sliding_controller2 = c14_c_emlrt_marshallIn
    (chartInstance, sf_mex_dup(sf_mex_getcell(c14_u, 1)),
     "is_active_c14_sliding_controller2");
  sf_mex_destroy(&c14_u);
  sf_mex_destroy(&c14_st);
}

static void sf_gateway_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  real_T c14_dv1[4];
  real_T c14_dv[2];
  int32_T c14_i;
  int32_T c14_i1;
  chartInstance->c14_JITTransitionAnimation[0] = 0U;
  _sfTime_ = sf_get_time(chartInstance->S);
  for (c14_i = 0; c14_i < 2; c14_i++) {
    c14_dv[c14_i] = (*chartInstance->c14_q)[c14_i];
  }

  c14_eML_blk_kernel(chartInstance, c14_dv, c14_dv1);
  for (c14_i1 = 0; c14_i1 < 4; c14_i1++) {
    (*chartInstance->c14_y)[c14_i1] = c14_dv1[c14_i1];
  }

  c14_do_animation_call_c14_sliding_controller2(chartInstance);
}

static void mdl_start_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
}

static void mdl_terminate_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  cudaError_t c14_errCode;
  c14_errCode = cudaGetLastError();
  if (c14_errCode != cudaSuccess) {
    emlrtThinCUDAError((uint32_T)c14_errCode, (char_T *)cudaGetErrorName
                       (c14_errCode), (char_T *)cudaGetErrorString(c14_errCode),
                       (char_T *)"SimGPUErrorChecks",
                       chartInstance->c14_fEmlrtCtx);
  }
}

static void mdl_setup_runtime_resources_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
  setLegacyDebuggerFlag(chartInstance->S, false);
  setDebuggerFlag(chartInstance->S, false);
  sim_mode_is_external(chartInstance->S);
}

static void mdl_cleanup_runtime_resources_c14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
}

static void initSimStructsc14_sliding_controller2
  (SFc14_sliding_controller2InstanceStruct *chartInstance)
{
}

const mxArray *sf_c14_sliding_controller2_get_eml_resolved_functions_info()
{
  const mxArray *c14_nameCaptureInfo = NULL;
  c14_nameCaptureInfo = NULL;
  sf_mex_assign(&c14_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1U, 0U, 2, 0, 1), false);
  return c14_nameCaptureInfo;
}

static void c14_eML_blk_kernel(SFc14_sliding_controller2InstanceStruct
  *chartInstance, real_T c14_b_q[2], real_T c14_b_y[4])
{
  const mxArray *c14_c_y = NULL;
  c14_b_y[0] = -0.324 * muDoubleScalarCos(c14_b_q[0]) + -0.39 *
    muDoubleScalarCos(c14_b_q[0] + c14_b_q[1]);
  c14_b_y[2] = -0.39 * muDoubleScalarCos(c14_b_q[0] + c14_b_q[1]);
  c14_b_y[1] = 0.324 * muDoubleScalarSin(c14_b_q[0]) - -0.39 * muDoubleScalarSin
    (c14_b_q[0] + c14_b_q[1]);
  c14_b_y[3] = 0.39 * muDoubleScalarSin(c14_b_q[0] + c14_b_q[1]);
  sf_mex_printf("%s =\\n", "y");
  c14_c_y = NULL;
  sf_mex_assign(&c14_c_y, sf_mex_create("y", c14_b_y, 0, 0U, 1U, 0U, 2, 2, 2),
                false);
  sf_mex_call(chartInstance->c14_fEmlrtCtx, NULL, "disp", 0U, 1U, 14, c14_c_y);
}

static void c14_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_b_y, const char_T *c14_identifier, real_T
  c14_c_y[4])
{
  emlrtMsgIdentifier c14_thisId;
  c14_thisId.fIdentifier = const_cast<const char_T *>(c14_identifier);
  c14_thisId.fParent = NULL;
  c14_thisId.bParentIsCell = false;
  c14_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c14_b_y), &c14_thisId,
    c14_c_y);
  sf_mex_destroy(&c14_b_y);
}

static void c14_b_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_u, const emlrtMsgIdentifier *c14_parentId,
  real_T c14_b_y[4])
{
  real_T c14_dv[4];
  int32_T c14_i;
  sf_mex_import(c14_parentId, sf_mex_dup(c14_u), c14_dv, 1, 0, 0U, 1, 0U, 2, 2,
                2);
  for (c14_i = 0; c14_i < 4; c14_i++) {
    c14_b_y[c14_i] = c14_dv[c14_i];
  }

  sf_mex_destroy(&c14_u);
}

static uint8_T c14_c_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_b_is_active_c14_sliding_controller2, const
  char_T *c14_identifier)
{
  emlrtMsgIdentifier c14_thisId;
  uint8_T c14_b_y;
  c14_thisId.fIdentifier = const_cast<const char_T *>(c14_identifier);
  c14_thisId.fParent = NULL;
  c14_thisId.bParentIsCell = false;
  c14_b_y = c14_d_emlrt_marshallIn(chartInstance, sf_mex_dup
    (c14_b_is_active_c14_sliding_controller2), &c14_thisId);
  sf_mex_destroy(&c14_b_is_active_c14_sliding_controller2);
  return c14_b_y;
}

static uint8_T c14_d_emlrt_marshallIn(SFc14_sliding_controller2InstanceStruct
  *chartInstance, const mxArray *c14_u, const emlrtMsgIdentifier *c14_parentId)
{
  uint8_T c14_b_u;
  uint8_T c14_b_y;
  sf_mex_import(c14_parentId, sf_mex_dup(c14_u), &c14_b_u, 1, 3, 0U, 0, 0U, 0);
  c14_b_y = c14_b_u;
  sf_mex_destroy(&c14_u);
  return c14_b_y;
}

static void init_dsm_address_info(SFc14_sliding_controller2InstanceStruct
  *chartInstance)
{
}

static void init_simulink_io_address(SFc14_sliding_controller2InstanceStruct
  *chartInstance)
{
  chartInstance->c14_fEmlrtCtx = (void *)sfrtGetEmlrtCtx(chartInstance->S);
  chartInstance->c14_q = (real_T (*)[2])ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c14_y = (real_T (*)[4])ssGetOutputPortSignal_wrapper
    (chartInstance->S, 1);
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* SFunction Glue Code */
void sf_c14_sliding_controller2_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2965247799U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(3859325211U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(4199429006U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2699768530U);
}

mxArray *sf_c14_sliding_controller2_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c14_sliding_controller2_jit_fallback_info(void)
{
  const char *infoFields[] = { "fallbackType", "fallbackReason",
    "hiddenFallbackType", "hiddenFallbackReason", "incompatibleSymbol" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 5, infoFields);
  mxArray *fallbackType = mxCreateString("pre");
  mxArray *fallbackReason = mxCreateString("GPUAcceleration");
  mxArray *hiddenFallbackType = mxCreateString("none");
  mxArray *hiddenFallbackReason = mxCreateString("");
  mxArray *incompatibleSymbol = mxCreateString("");
  mxSetField(mxInfo, 0, infoFields[0], fallbackType);
  mxSetField(mxInfo, 0, infoFields[1], fallbackReason);
  mxSetField(mxInfo, 0, infoFields[2], hiddenFallbackType);
  mxSetField(mxInfo, 0, infoFields[3], hiddenFallbackReason);
  mxSetField(mxInfo, 0, infoFields[4], incompatibleSymbol);
  return mxInfo;
}

mxArray *sf_c14_sliding_controller2_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

static const mxArray *sf_get_sim_state_info_c14_sliding_controller2(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  mxArray *mxVarInfo = sf_mex_decode(
    "eNpjYPT0ZQACPhDBxMDABqQ4IEwwYIXyGaFijHBxFri4AhCXVBakgsSLi5I9U4B0XmIumJ9YWuG"
    "Zl5YPNt+CAWE+GxbzGZHM54SKQ8AHe8r0iziA9Bsg6WchoF8AyKqEhQuUJt9+BQfK9EPsjyDgfk"
    "UU90P4mcXxicklmWWp8cmGJvHFOZkpmXnp8cn5eSVF+Tk5qUVGSOaDAABbQRvX"
    );
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c14_sliding_controller2_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static const char* sf_get_instance_specialization(void)
{
  return "srLlN0UU1TI2nTLqVx7w7ZD";
}

static void sf_opaque_initialize_c14_sliding_controller2(void *chartInstanceVar)
{
  initialize_params_c14_sliding_controller2
    ((SFc14_sliding_controller2InstanceStruct*) chartInstanceVar);
  initialize_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_enable_c14_sliding_controller2(void *chartInstanceVar)
{
  enable_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_disable_c14_sliding_controller2(void *chartInstanceVar)
{
  disable_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_gateway_c14_sliding_controller2(void *chartInstanceVar)
{
  sf_gateway_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c14_sliding_controller2(SimStruct*
  S)
{
  return get_sim_state_c14_sliding_controller2
    ((SFc14_sliding_controller2InstanceStruct *)sf_get_chart_instance_ptr(S));/* raw sim ctx */
}

static void sf_opaque_set_sim_state_c14_sliding_controller2(SimStruct* S, const
  mxArray *st)
{
  set_sim_state_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    sf_get_chart_instance_ptr(S), st);
}

static void sf_opaque_cleanup_runtime_resources_c14_sliding_controller2(void
  *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc14_sliding_controller2InstanceStruct*) chartInstanceVar
      )->S;
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_sliding_controller2_optimization_info();
    }

    mdl_cleanup_runtime_resources_c14_sliding_controller2
      ((SFc14_sliding_controller2InstanceStruct*) chartInstanceVar);
    ((SFc14_sliding_controller2InstanceStruct*) chartInstanceVar)->
      ~SFc14_sliding_controller2InstanceStruct();
    utFree(chartInstanceVar);
    if (ssGetUserData(S)!= NULL) {
      sf_free_ChartRunTimeInfo(S);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_mdl_start_c14_sliding_controller2(void *chartInstanceVar)
{
  mdl_start_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_mdl_terminate_c14_sliding_controller2(void
  *chartInstanceVar)
{
  mdl_terminate_c14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_init_subchart_simstructs(void *chartInstanceVar)
{
  initSimStructsc14_sliding_controller2((SFc14_sliding_controller2InstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c14_sliding_controller2(SimStruct *S)
{
  int i;
  for (i=0;i<ssGetNumRunTimeParams(S);i++) {
    if (ssGetSFcnParamTunable(S,i)) {
      ssUpdateDlgParamAsRunTimeParam(S,i);
    }
  }

  sf_warn_if_symbolic_dimension_param_changed(S);
  if (sf_machine_global_initializer_called()) {
    initialize_params_c14_sliding_controller2
      ((SFc14_sliding_controller2InstanceStruct*)sf_get_chart_instance_ptr(S));
    initSimStructsc14_sliding_controller2
      ((SFc14_sliding_controller2InstanceStruct*)sf_get_chart_instance_ptr(S));
  }
}

const char* sf_c14_sliding_controller2_get_post_codegen_info(void)
{
  int i;
  const char* encStrCodegen [18] = {
    "eNrtV81u00AQdqOCQAJUISQuSFBxgCN/EpygbX5EpJRWOCmIS7VdT+JV1rtmf5LmATjyLrwA78G",
    "ZJ+DIgQOztpMGx3YoERUgLLnO2t/Mzsw3P1tvrb3r4XUF762rnncenxfwrnnpdS5br83d6ft170",
    "62fo9Cwkb7RJFIe5WXIBG8BC25NUyKtujLQhgTfVAgKGJjqUyZNs0iy5kYtqygTp9+FTIa+qG0P",
    "NhBWRLsCT5BbbE1+6inwRRQ0wIITKikHYQtTgYzi5UZ10OgQ22jKhc0GN/Gziy9a7lhMYfmMdC2",
    "0IagxfrENt8QA3VzXOqm81T7U6CMYs6IKPQ2JNqHGANsoBcH+HfPGnQqD6MhUWYHQjIC3WHDRKc",
    "UkNfJNH44YoIYqRjhzYjXneCibfsc7dmVAfCKgKBtOwrIMJZMmHL+/RZ62hTkiEMDjuygXJsPb6",
    "0j/4DBGFRp3Pp1OQJFBrAnSjdNAtI8TtiaZckizLAIDojapsifhqA0ezFztE+QJ+iiRBkMEifbu",
    "qvYCMNbqs1GbZeZy0rGRinZehks0dYcQRULM20tKuqEc10K68q4AyPgidYGMaQalmotxmnNgq7E",
    "ALv0Lq8GKxgSn8HqUgSskK5RDpD0nRfYWH5EUquNjOqYvI1OZ/HzIqwtDKg+oVDUBRRhGjBmSXj",
    "LtQVMO+4RiFaZxLwicJohy1Ce7lvRGEs1xJhUNJETFxyjpcBID5BLrISexqKpgjkul+EooSEErs",
    "EwDrtYNogtiIl2rW0b627EzKQBmioWF7BqseqwDTVdQk1i6ImhkGPRUjLysx6fhhcAs40owcRgB",
    "/uXmrRw9yIq3Dy7553Ms0s/Mc+mcvnn3Tk9awV6vLlnft+Ltep9a/hrbTp/5+Qu5/ZZz8k53Abe",
    "Vx/eeS6+vFMfnwW3v377vLnK/h9qp5v/V7L1jWmjnRXOaCFfHfb5nF3rBfqvz+nfyNZadfiLe73",
    "e/W77geh23h4cPx4/ftNI+Vliby1n7/T9LdfxMcuS/FS0HWQHE7cmNh3XTv+TOXvPL4nHxex9en",
    "15tpr8ta08j+tL5Dfw1ySXt7++/62t1eTT/V8vsX8zx/dmMtcPiesWcEjvPzrUnAVY6odUCqMk5",
    "6AeFNTnr+b7aeW8M5b7W+z8L/f7ef+Z+XXWct4Zy63q32nn+J+Gr5oHXg6/8Qf7ser56nfjP3mn",
    "OwfdzNZPZ//q1EPGg4JTb/YZj7D9oq//QJ5+B5xPsgM=",
    ""
  };

  static char newstr [1245] = "";
  newstr[0] = '\0';
  for (i = 0; i < 18; i++) {
    strcat(newstr, encStrCodegen[i]);
  }

  return newstr;
}

static void mdlSetWorkWidths_c14_sliding_controller2(SimStruct *S)
{
  const char* newstr = sf_c14_sliding_controller2_get_post_codegen_info();
  sf_set_work_widths(S, newstr);
  ssSetChecksum0(S,(1210528530U));
  ssSetChecksum1(S,(1921380462U));
  ssSetChecksum2(S,(593772477U));
  ssSetChecksum3(S,(568524024U));
}

static void mdlRTW_c14_sliding_controller2(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlSetupRuntimeResources_c14_sliding_controller2(SimStruct *S)
{
  SFc14_sliding_controller2InstanceStruct *chartInstance;
  chartInstance = (SFc14_sliding_controller2InstanceStruct *)utMalloc(sizeof
    (SFc14_sliding_controller2InstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  memset(chartInstance, 0, sizeof(SFc14_sliding_controller2InstanceStruct));
  chartInstance = new (chartInstance) SFc14_sliding_controller2InstanceStruct;
  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway =
    sf_opaque_gateway_c14_sliding_controller2;
  chartInstance->chartInfo.initializeChart =
    sf_opaque_initialize_c14_sliding_controller2;
  chartInstance->chartInfo.mdlStart =
    sf_opaque_mdl_start_c14_sliding_controller2;
  chartInstance->chartInfo.mdlTerminate =
    sf_opaque_mdl_terminate_c14_sliding_controller2;
  chartInstance->chartInfo.mdlCleanupRuntimeResources =
    sf_opaque_cleanup_runtime_resources_c14_sliding_controller2;
  chartInstance->chartInfo.enableChart =
    sf_opaque_enable_c14_sliding_controller2;
  chartInstance->chartInfo.disableChart =
    sf_opaque_disable_c14_sliding_controller2;
  chartInstance->chartInfo.getSimState =
    sf_opaque_get_sim_state_c14_sliding_controller2;
  chartInstance->chartInfo.setSimState =
    sf_opaque_set_sim_state_c14_sliding_controller2;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c14_sliding_controller2;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c14_sliding_controller2;
  chartInstance->chartInfo.mdlSetWorkWidths =
    mdlSetWorkWidths_c14_sliding_controller2;
  chartInstance->chartInfo.callGetHoverDataForMsg = NULL;
  chartInstance->chartInfo.extModeExec = NULL;
  chartInstance->chartInfo.restoreLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.restoreBeforeLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.storeCurrentConfiguration = NULL;
  chartInstance->chartInfo.callAtomicSubchartUserFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartAutoFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartEventFcn = NULL;
  chartInstance->chartInfo.chartStateSetterFcn = NULL;
  chartInstance->chartInfo.chartStateGetterFcn = NULL;
  chartInstance->S = S;
  chartInstance->chartInfo.dispatchToExportedFcn = NULL;
  sf_init_ChartRunTimeInfo(S, &(chartInstance->chartInfo), false, 0,
    chartInstance->c14_JITStateAnimation,
    chartInstance->c14_JITTransitionAnimation);
  init_dsm_address_info(chartInstance);
  init_simulink_io_address(chartInstance);
  if (!sim_mode_is_rtw_gen(S)) {
  }

  mdl_setup_runtime_resources_c14_sliding_controller2(chartInstance);
}

void c14_sliding_controller2_method_dispatcher(SimStruct *S, int_T method, void *
  data)
{
  switch (method) {
   case SS_CALL_MDL_SETUP_RUNTIME_RESOURCES:
    mdlSetupRuntimeResources_c14_sliding_controller2(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c14_sliding_controller2(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c14_sliding_controller2(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c14_sliding_controller2_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}
