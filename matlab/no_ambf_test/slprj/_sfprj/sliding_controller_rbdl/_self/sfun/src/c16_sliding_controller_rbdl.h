#ifndef __c16_sliding_controller_rbdl_h__
#define __c16_sliding_controller_rbdl_h__

/* Forward Declarations */
#ifndef typedef_c16_SL_Bus_ROSVariableLengthArrayInfo
#define typedef_c16_SL_Bus_ROSVariableLengthArrayInfo

typedef struct c16_SL_Bus_ROSVariableLengthArrayInfo_tag
  c16_SL_Bus_ROSVariableLengthArrayInfo;

#endif                                 /* typedef_c16_SL_Bus_ROSVariableLengthArrayInfo */

#ifndef typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq
#define typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq

typedef struct c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb
  c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq;

#endif                                 /* typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq */

struct SFc16_sliding_controller_rbdlInstanceStruct;

/* Type Definitions */
#ifndef struct_c16_SL_Bus_ROSVariableLengthArrayInfo_tag
#define struct_c16_SL_Bus_ROSVariableLengthArrayInfo_tag

struct c16_SL_Bus_ROSVariableLengthArrayInfo_tag
{
  uint32_T CurrentLength;
  uint32_T ReceivedLength;
};

#endif                                 /* struct_c16_SL_Bus_ROSVariableLengthArrayInfo_tag */

#ifndef typedef_c16_SL_Bus_ROSVariableLengthArrayInfo
#define typedef_c16_SL_Bus_ROSVariableLengthArrayInfo

typedef c16_SL_Bus_ROSVariableLengthArrayInfo_tag
  c16_SL_Bus_ROSVariableLengthArrayInfo;

#endif                                 /* typedef_c16_SL_Bus_ROSVariableLengthArrayInfo */

#ifndef struct_c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb
#define struct_c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb

struct c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb
{
  real_T Q[7];
  c16_SL_Bus_ROSVariableLengthArrayInfo Q_SL_Info;
  real_T Qd[7];
  c16_SL_Bus_ROSVariableLengthArrayInfo Qd_SL_Info;
  real_T Qdd[7];
  c16_SL_Bus_ROSVariableLengthArrayInfo Qdd_SL_Info;
  uint8_T Controller[4];
  c16_SL_Bus_ROSVariableLengthArrayInfo Controller_SL_Info;
  real_T Other[7];
  c16_SL_Bus_ROSVariableLengthArrayInfo Other_SL_Info;
};

#endif                                 /* struct_c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb */

#ifndef typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq
#define typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq

typedef c16_b_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfb
  c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq;

#endif                                 /* typedef_c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq */

#ifndef typedef_c16_sliding_controller_rbdlStackData
#define typedef_c16_sliding_controller_rbdlStackData

typedef struct {
} c16_sliding_controller_rbdlStackData;

#endif                                 /* typedef_c16_sliding_controller_rbdlStackData */

#ifndef struct_SFc16_sliding_controller_rbdlInstanceStruct
#define struct_SFc16_sliding_controller_rbdlInstanceStruct

struct SFc16_sliding_controller_rbdlInstanceStruct
{
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint8_T c16_is_active_c16_sliding_controller_rbdl;
  uint8_T c16_JITStateAnimation[1];
  uint8_T c16_JITTransitionAnimation[1];
  void *c16_fEmlrtCtx;
  c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq *c16_blankMsg;
  c16_SL_Bus_sliding_controller_rbdl_DesiredJointsCmdRequest_rfbsq *c16_msg;
};

#endif                                 /* struct_SFc16_sliding_controller_rbdlInstanceStruct */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray
  *sf_c16_sliding_controller_rbdl_get_eml_resolved_functions_info();

/* Function Definitions */
extern void sf_c16_sliding_controller_rbdl_get_check_sum(mxArray *plhs[]);
extern void c16_sliding_controller_rbdl_method_dispatcher(SimStruct *S, int_T
  method, void *data);

#endif
