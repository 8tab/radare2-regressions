# XXX
PULLADDR=https://github.com/radare/radare2-regressions.git

do:
	-git pull ${PULLADDR}
	@sh run_tests.sh

all:
	@sh run_tests.sh
	@sh run_tests.sh t2
	@sh run_tests.sh t.asm

asm:
	@sh run_tests.sh t.asm

broken:
	@cd t ; grep BROKEN=1 * | cut -d : -f1 |sort -u

clean:
	rm -rf tmp

.PHONY: all clean
