#!/bin/sh

if [[ "1" == "$CREATE_IPS" ]] || [[ "1" == "$CREATE_IPS_HLS_YUV2RGB_ID0" ]]
then
if [[ -f ../src/ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0.zip ]]
then
unzip -o -x ../src/ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0.zip -d ../src/ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0
else
mkdir -p ../src/hls
pushd ../src/hls >/dev/null
rm -rf hls_yuv2rgb_id0
git clone $(grep ^HLS_YUV2RGB_ID0 ../../IPREPO|sed "s/HLS_YUV2RGB_ID0: \(.*\)/\1/g") hls_yuv2rgb_id0
pushd  hls_yuv2rgb_id0>/dev/null
git checkout -f $(grep ^HLS_YUV2RGB_ID0 ../../../IPTAG|sed "s/HLS_YUV2RGB_ID0: \(.*\)/\1/g")
printf -- "$(cat ../../../PART)\n">PART
printf -- "$(grep ^HLS_YUV2RGB_ID0 ../../../IPCLKPERIOD|sed 's/HLS_YUV2RGB_ID0: \(.*\)/\1/g')\n">CLKPERIOD
printf -- '0\n'>ID
printf -- ''>CFLAGS
printf -- '-I/opt/Vitis/Vitis_Libraries/vision/L1/include/\n'>>CFLAGS
printf -- 'D_DEPTH_=8\n'>>CFLAGS
printf -- 'D_COLOR_CHANNELS_=3\n'>>CFLAGS
printf -- 'D_PPC_=2\n'>>CFLAGS
printf -- 'D_MAX_COLS_=3840\n'>>CFLAGS
printf -- 'D_MAX_ROWS_=2160\n'>>CFLAGS
pushd macros >/dev/null
source export.sh
mkdir -p ../../../ip
rm -rf ../../../ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0
unzip -x export_1/solution1/impl/ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0.zip -d ../../../ip/xilinx_com_hls_Hls_Yuv2Rgb_Id0_1_0
popd >/dev/null
popd >/dev/null
popd >/dev/null
fi
fi
