set targets {nonproject_*}
file delete -force -- {*}[glob -type d -nocomplain {*}$targets]
