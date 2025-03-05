write_project_tcl -all_properties -force -no_copy_sources -use_bd_files project.tcl
catch {file copy -force -- [file join project_1 project_1.runs impl_1 top.ltx] top.ltx}
catch {file copy -force -- [file join project_1 project_1.runs impl_1 top.bit] top.bit}
write_hw_platform -fixed -include_bit -force top.xsa
