1. git clone https://github.com/cemkayhan/kv260_affine_transform_demo_vivado_prj.git vivado_prj
2. cd vivado_prj
3. source Vivado 2022.2 settings script (e.g. /opt/Vitis/Vitis/2022.2/settings64.sh)
4. cd macros
5. CREATE_IPS=1 parallel -j $(cat ../IPJOBS) < create_ips.sh
6. source project.sh
7. start_gui
8. Validate block design
9. Generate bitstream
