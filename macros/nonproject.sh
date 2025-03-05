#!/bin/sh

vivado -mode batch -source nonproject.tcl -tclargs $STRATEGY $CREATE_PROJECT $CREATE_TARGETS $SAVE_DCP $COPY_XSA
