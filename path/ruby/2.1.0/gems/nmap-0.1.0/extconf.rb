require "mkmf"
require "rbconfig"

sitearchdir = Config::CONFIG["sitearchdir"]

$CFLAGS += " -I #{ sitearchdir } "
$LDFLAGS += " #{ sitearchdir }/narray.so " # force a link so narray.so symbols will be resolved

create_makefile "na_str"
