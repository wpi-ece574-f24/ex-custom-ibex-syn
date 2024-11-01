# Use the following command on custom_ibex to produce a default synthesis view
#
#       fusesoc --cores-root=. run --target=synth --setup custom_ibex
#

include /home/pschaumont/ex-custom-ibex/build/custom_ibex_0/synth-vivado/core-deps.mk


SV_FILES = $(filter %.sv, $(fusesoc-deps))
GENERIC_FILES = $(filter-out %xilinx%.sv, $(SV_FILES))
PKG_FILES = $(filter %_pkg.sv, $(GENERIC_FILES))
SYN_FILES = $(filter-out %_pkg.sv, $(GENERIC_FILES))
PKG_PATHS = $(foreach file, $(PKG_FILES), -I$(dir $(file)))
DVMACROS_PATH = $(foreach file, $(filter %/dv_fcov_macros.svh, $(fusesoc-deps)), -I$(dir $(file)))
OUTFILES = $(foreach file, $(SYN_FILES), generated/$(basename $(notdir $(file))).v)

all:
	@echo "Targets are:"
	@echo "  code          Generate RTL code in Verilog"
	@echo "  syn           Run Genus logic synthesis"

syn: generated/top_rtl.v
	BASENAME=top_rtl \
	CLOCKPERIOD=10 \
	TIMINGPATH=/opt/cadence/libraries/gsclib045_all_v4.7/gsclib045/timing \
	TIMINGLIB=slow_vdd1v0_basicCells.lib \
	VERILOG="$(OUTFILES)" \
	genus -f genus_script.tcl

code: generated/top_rtl.v

generated/top_rtl.v:
	mkdir -p generated
	for file in $(SYN_FILES); do \
		module=$$(basename -s .sv "$$file"); \
		echo $$module; \
		sv2v --define=SYNTHESIS $(PKG_FILES) $(PKG_PATHS) $(DVMACROS_PATH) "$$file" > generated/"$$module".v ; \
	done

clean:
	rm -rf outputs reports genus.log* genus.cmd* *~ generated fv

