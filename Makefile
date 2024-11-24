PATCH_REGIONS := us eu jp jp_update

.PHONY: $(PATCH_REGIONS) clean all

all:
	@echo usage: make [region]
	@echo options for [region] are us, eu, jp and jp_update
	@echo e.g \"make us\" compiles the patch for north american dumps
	@echo     \"make jp_update\" compiles the patch for v1.1 japanese dumps

$(PATCH_REGIONS): %:
	mkdir -p build
	armips source/$@.s
	flips -c code.bin build/patched_code.bin code.ips

clean:
	rm -rf build code.ips
