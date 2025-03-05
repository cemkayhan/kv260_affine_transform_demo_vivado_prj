#!/bin/sh

if [[ ! -d project_1 ]]
then
vivado -mode tcl -source project.tcl
fi
