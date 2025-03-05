#!/bin/sh

if [[ "1" == "$CREATE_IPS" ]] || [[ "1" == "$CREATE_IPS_HLS_AFFINE_TRANSFORM_ID0" ]]
then
if [[ -f ../src/ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0.zip ]]
then
unzip -o -x ../src/ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0.zip -d ../src/ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0
else
mkdir -p ../src/hls
pushd ../src/hls >/dev/null
rm -rf hls_affine_transform_id0
git clone $(grep ^HLS_AFFINE_TRANSFORM_ID0 ../../IPREPO|sed "s/HLS_AFFINE_TRANSFORM_ID0:\s*\(.*\)/\1/g") hls_affine_transform_id0
pushd  hls_affine_transform_id0>/dev/null
git checkout -f $(grep ^HLS_AFFINE_TRANSFORM_ID0 ../../../IPTAG|sed "s/HLS_AFFINE_TRANSFORM_ID0:\s*\(.*\)/\1/g")
printf -- "$(cat ../../../PART)\n">PART
printf -- "$(grep ^HLS_AFFINE_TRANSFORM_ID0 ../../../IPCLKPERIOD|sed 's/HLS_AFFINE_TRANSFORM_ID0:\s*\(.*\)/\1/g')\n">CLKPERIOD
printf -- '0\n'>ID
printf -- ''>CFLAGS
printf -- 'D_ENABLE_HLS_CSYNTH_=0\n'>>CFLAGS
printf -- 'D_ENABLE_HLS_CSIM_=0\n'>>CFLAGS
printf -- 'D_ENABLE_HLS_COSIM_=0\n'>>CFLAGS
printf -- 'D_DEPTH_=8\n'>>CFLAGS
printf -- 'D_MM_CHANNELS_=4\n'>>CFLAGS
printf -- 'D_MM_PPC_=16\n'>>CFLAGS
printf -- 'D_STRM_INTR_PPC_=8\n'>>CFLAGS
printf -- 'D_STRM_OUT_CHANNELS_=3\n'>>CFLAGS
printf -- 'D_STRM_OUT_PPC_=2\n'>>CFLAGS
printf -- 'D_STRM_IN_CHANNELS_=3\n'>>CFLAGS
printf -- 'D_STRM_IN_PPC_=2\n'>>CFLAGS
printf -- 'D_FP_T_=float\n'>>CFLAGS
printf -- 'D_MAX_COLS_=3840\n'>>CFLAGS
printf -- 'D_MAX_ROWS_=2176\n'>>CFLAGS
printf -- 'D_MAX_STRIDE_=4096\n'>>CFLAGS
printf -- 'D_COLS_MARGIN_=64\n'>>CFLAGS
printf -- 'D_ROWS_MARGIN_=64\n'>>CFLAGS
printf -- 'D_BLOCK_SIZE_=32\n'>>CFLAGS
printf -- 'D_VIDWRAXI_NUM_WRITE_OUTSTANDING_=32\n'>>CFLAGS
printf -- 'D_AFFRDAXI_NUM_READ_OUTSTANDING_=32\n'>>CFLAGS
printf -- 'D_AFFWRAXI_NUM_WRITE_OUTSTANDING_=32\n'>>CFLAGS
printf -- 'D_VIDRDAXI_NUM_READ_OUTSTANDING_=32\n'>>CFLAGS
printf -- 'D_VIDWRAXI_LATENCY_=50\n'>>CFLAGS
printf -- 'D_AFFRDAXI_LATENCY_=50\n'>>CFLAGS
printf -- 'D_AFFWRAXI_LATENCY_=50\n'>>CFLAGS
printf -- 'D_VIDRDAXI_LATENCY_=50\n'>>CFLAGS
printf -- 'D_PERFORMANCE_FACTOR_=4\n'>>CFLAGS
printf -- 'D_REDUCED_MASTERS_=0\n'>>CFLAGS
pushd macros >/dev/null
source export.sh
mkdir -p ../../../ip
rm -rf ../../../ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0
unzip -x export_1/solution1/impl/ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0.zip -d ../../../ip/xilinx_com_hls_Hls_Affine_Transform_Id0_1_0
popd >/dev/null
popd >/dev/null
popd >/dev/null
fi
fi
