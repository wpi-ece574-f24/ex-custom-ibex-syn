# Use the following command on custom_ibex to produce a default synthesis view
#
#       fusesoc --cores-root=. run --target=synth --setup custom_ibex
#

BUILDROOT=/home/pschaumont/ex-custom-ibex

include $(BUILDROOT)/build/custom_ibex_0/synth-vivado/core-deps.mk
SV_FILES = $(filter %.sv, $(fusesoc-deps))
GENERIC_FILES = $(filter-out %xilinx%.sv, $(SV_FILES))
PKG_FILES = $(filter %_pkg.sv, $(GENERIC_FILES))
SYN_FILES = $(filter-out %_pkg.sv, $(GENERIC_FILES))
PKG_PATHS = $(foreach file, $(PKG_FILES), -I$(dir $(file)))
DVMACROS_PATH = $(foreach file, $(filter %/dv_fcov_macros.svh, $(fusesoc-deps)), -I$(dir $(file)))
OUTFILES = $(foreach file, $(SYN_FILES), generated/$(basename $(notdir $(file))).v)

APP=$(BUILDROOT)/sw/c/build/demo/myreg-test/myreg-test

all:
	@echo "Targets are:"
	@echo "  code          Generate RTL code in Verilog"
	@echo "  sim           Run RTL simulation"
	@echo "  clean         Remove intermediate files"

code: generated/top_rtl.v
	echo $(OUTFILES) >file.list
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_ram_2p_pkg_0/rtl/prim_ram_2p_pkg.sv .
	cp $(BUILDROOT)/build/custom_ibex_0/sim-verilator/generated/lowrisc_prim_ram_2p-impl_0/prim_ram_2p.sv .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_generic_ram_2p_0/rtl/prim_generic_ram_2p.sv .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_util_memload_0/rtl/prim_util_memload.svh .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_assert_0.1/rtl/prim_assert.sv .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_assert_0.1/rtl/prim_assert_standard_macros.svh .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_assert_0.1/rtl/prim_assert_sec_cm.svh .
	cp $(BUILDROOT)/build/custom_ibex_0/src/lowrisc_prim_assert_0.1/rtl/prim_flop_macros.sv .

generated/top_rtl.v:
	mkdir -p generated
	for file in $(SYN_FILES); do \
		module=$$(basename -s .sv "$$file"); \
		echo $$module; \
		sv2v --define=SYNTHESIS $(PKG_FILES) $(PKG_PATHS) $(DVMACROS_PATH) "$$file" > generated/"$$module".v ; \
	done

sim: $(APP)
	riscv32-unknown-elf-objcopy -O binary --only-section=.text $(APP) memory.bin
	xxd -c 4 -p memory.bin | sed 's/^\(..\)\(..\)\(..\)\(..\)$$/\4\3\2\1/' >memory.hex
	xrun -LINEDEBUG -timescale 1ns/1ps -sv -f file.list prim_ram_2p_pkg.sv prim_ram_2p.sv prim_generic_ram_2p.sv tb.v -access +rwc -gui -top tb


clean:
	rm -rf file.list generated prim*sv prim*svh xcelium.d xrun.* *~ memory.bin memory.hex waves.shm

