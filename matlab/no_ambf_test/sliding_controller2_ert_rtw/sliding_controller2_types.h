//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// File: sliding_controller2_types.h
//
// Code generated for Simulink model 'sliding_controller2'.
//
// Model version                  : 1.235
// Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
// C/C++ source code generated on : Tue Sep  7 08:34:51 2021
//
// Target selection: ert.tlc
// Embedded hardware selection: Generic->Unspecified (assume 32-bit Generic)
// Code generation objectives: Unspecified
// Validation result: Not run
//
#ifndef RTW_HEADER_sliding_controller2_types_h_
#define RTW_HEADER_sliding_controller2_types_h_
#include "rtwtypes.h"
#include "multiword_types.h"

// Model Code Variants
#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Float64_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Float64_

// MsgType=std_msgs/Float64
struct SL_Bus_sliding_controller2_std_msgs_Float64
{
  real_T Data;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_ros_time_Time_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_ros_time_Time_

// MsgType=ros_time/Time
struct SL_Bus_sliding_controller2_ros_time_Time
{
  real_T Sec;
  real_T Nsec;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_ROSVariableLengthArrayInfo_
#define DEFINED_TYPEDEF_FOR_SL_Bus_ROSVariableLengthArrayInfo_

struct SL_Bus_ROSVariableLengthArrayInfo
{
  uint32_T CurrentLength;
  uint32_T ReceivedLength;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Header_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Header_

// MsgType=std_msgs/Header
struct SL_Bus_sliding_controller2_std_msgs_Header
{
  uint32_T Seq;

  // MsgType=ros_time/Time
  SL_Bus_sliding_controller2_ros_time_Time Stamp;

  // PrimitiveROSType=string:IsVarLen=1:VarLenCategory=data:VarLenElem=FrameId_SL_Info:TruncateAction=warn 
  uint8_T FrameId[128];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=FrameId
  SL_Bus_ROSVariableLengthArrayInfo FrameId_SL_Info;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_String_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_String_

// MsgType=std_msgs/String
struct SL_Bus_sliding_controller2_std_msgs_String
{
  // PrimitiveROSType=string:IsVarLen=1:VarLenCategory=data:VarLenElem=Data_SL_Info:TruncateAction=warn 
  uint8_T Data[128];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Data
  SL_Bus_ROSVariableLengthArrayInfo Data_SL_Info;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_sensor_msgs_JointState_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_sensor_msgs_JointState_

// MsgType=sensor_msgs/JointState
struct SL_Bus_sliding_controller2_sensor_msgs_JointState
{
  // MsgType=std_msgs/Header
  SL_Bus_sliding_controller2_std_msgs_Header Header;

  // MsgType=std_msgs/String:PrimitiveROSType=string[]:IsVarLen=1:VarLenCategory=data:VarLenElem=Name_SL_Info:TruncateAction=warn 
  SL_Bus_sliding_controller2_std_msgs_String Name[16];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Name
  SL_Bus_ROSVariableLengthArrayInfo Name_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Position_SL_Info:TruncateAction=warn 
  real_T Position[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Position
  SL_Bus_ROSVariableLengthArrayInfo Position_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Velocity_SL_Info:TruncateAction=warn 
  real_T Velocity[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Velocity
  SL_Bus_ROSVariableLengthArrayInfo Velocity_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Effort_SL_Info:TruncateAction=warn 
  real_T Effort[7];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Effort
  SL_Bus_ROSVariableLengthArrayInfo Effort_SL_Info;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_RBDLInverseDynamicsReques_b5z6ex_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_RBDLInverseDynamicsReques_b5z6ex_

// MsgType=rbdl_server/RBDLInverseDynamicsRequest
struct SL_Bus_sliding_controller2_RBDLInverseDynamicsReques_b5z6ex
{
  // PrimitiveROSType=string:IsVarLen=1:VarLenCategory=data:VarLenElem=ModelName_SL_Info:TruncateAction=warn 
  uint8_T ModelName[4];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=ModelName
  SL_Bus_ROSVariableLengthArrayInfo ModelName_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Q_SL_Info:TruncateAction=warn
  real_T Q[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Q
  SL_Bus_ROSVariableLengthArrayInfo Q_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Qd_SL_Info:TruncateAction=warn
  real_T Qd[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Qd
  SL_Bus_ROSVariableLengthArrayInfo Qd_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Qdd_SL_Info:TruncateAction=warn
  real_T Qdd[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Qdd
  SL_Bus_ROSVariableLengthArrayInfo Qdd_SL_Info;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Bool_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_msgs_Bool_

// MsgType=std_msgs/Bool
struct SL_Bus_sliding_controller2_std_msgs_Bool
{
  boolean_T Data;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_ambf_walker_DesiredJoints_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_ambf_walker_DesiredJoints_

// MsgType=ambf_walker/DesiredJoints
struct SL_Bus_sliding_controller2_ambf_walker_DesiredJoints
{
  // MsgType=std_msgs/Header
  SL_Bus_sliding_controller2_std_msgs_Header Header;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Q_SL_Info:TruncateAction=warn
  real_T Q[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Q
  SL_Bus_ROSVariableLengthArrayInfo Q_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Qd_SL_Info:TruncateAction=warn
  real_T Qd[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Qd
  SL_Bus_ROSVariableLengthArrayInfo Qd_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Qdd_SL_Info:TruncateAction=warn
  real_T Qdd[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Qdd
  SL_Bus_ROSVariableLengthArrayInfo Qdd_SL_Info;

  // IsVarLen=1:VarLenCategory=data:VarLenElem=Other_SL_Info:TruncateAction=warn 
  real_T Other[6];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Other
  SL_Bus_ROSVariableLengthArrayInfo Other_SL_Info;

  // PrimitiveROSType=string:IsVarLen=1:VarLenCategory=data:VarLenElem=Controller_SL_Info:TruncateAction=warn 
  uint8_T Controller[8];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Controller
  SL_Bus_ROSVariableLengthArrayInfo Controller_SL_Info;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_srvs_SetBoolRequest_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_srvs_SetBoolRequest_

// MsgType=std_srvs/SetBoolRequest
struct SL_Bus_sliding_controller2_std_srvs_SetBoolRequest
{
  boolean_T Data;
};

#endif

#ifndef DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_srvs_SetBoolResponse_
#define DEFINED_TYPEDEF_FOR_SL_Bus_sliding_controller2_std_srvs_SetBoolResponse_

// MsgType=std_srvs/SetBoolResponse
struct SL_Bus_sliding_controller2_std_srvs_SetBoolResponse
{
  boolean_T Success;

  // PrimitiveROSType=string:IsVarLen=1:VarLenCategory=data:VarLenElem=Message_SL_Info:TruncateAction=warn 
  uint8_T Message[128];

  // IsVarLen=1:VarLenCategory=length:VarLenElem=Message
  SL_Bus_ROSVariableLengthArrayInfo Message_SL_Info;
};

#endif

#ifndef struct_ros_slroscpp_internal_block_P_T
#define struct_ros_slroscpp_internal_block_P_T

struct ros_slroscpp_internal_block_P_T
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
};

#endif                                // struct_ros_slroscpp_internal_block_P_T

#ifndef struct_f_robotics_slcore_internal_bl_T
#define struct_f_robotics_slcore_internal_bl_T

struct f_robotics_slcore_internal_bl_T
{
  int32_T __dummy;
};

#endif                                // struct_f_robotics_slcore_internal_bl_T

#ifndef struct_ros_slros_internal_block_Curr_T
#define struct_ros_slros_internal_block_Curr_T

struct ros_slros_internal_block_Curr_T
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  f_robotics_slcore_internal_bl_T SampleTimeHandler;
};

#endif                                // struct_ros_slros_internal_block_Curr_T

#ifndef struct_ExampleHelperSimulationRateCo_T
#define struct_ExampleHelperSimulationRateCo_T

struct ExampleHelperSimulationRateCo_T
{
  int32_T isInitialized;
};

#endif                                // struct_ExampleHelperSimulationRateCo_T

#ifndef struct_ros_slroscpp_internal_block_S_T
#define struct_ros_slroscpp_internal_block_S_T

struct ros_slroscpp_internal_block_S_T
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
};

#endif                                // struct_ros_slroscpp_internal_block_S_T

#ifndef struct_ros_slroscpp_internal_block_k_T
#define struct_ros_slroscpp_internal_block_k_T

struct ros_slroscpp_internal_block_k_T
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
};

#endif                                // struct_ros_slroscpp_internal_block_k_T

// Parameters (default storage)
typedef struct P_sliding_controller2_T_ P_sliding_controller2_T;

// Forward declaration for rtModel
typedef struct tag_RTM_sliding_controller2_T RT_MODEL_sliding_controller2_T;

#endif                               // RTW_HEADER_sliding_controller2_types_h_

//
// File trailer for generated code.
//
// [EOF]
//
