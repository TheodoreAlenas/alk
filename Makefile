MOUNT = ${HOME}/.local/albin

TESTS = test-snippet test-snippet-config sxhkd/test-snippet-to-sxhkd

FINAL_EXECS_SNIP = alc-snippet-assemble alc-snippet alm-snippet
FINAL_EXECS_EXT = $(wildcard external/*)
FINAL_EXECS = $(addprefix ${MOUNT}/,${FINAL_EXECS_SNIP} ${FINAL_EXECS_EXT})

CONFIG_DIR = ${HOME}/.config/alsnip

all: target ${MOUNT} ${FINAL_EXECS} ${CONFIG_DIR}/auto.sh ~/.config/zsh/alsnip-aliases.sh ~/.config/sxhkd/sxhkdrc

clean:
	rm -f ${FINAL_EXECS}
	rm target/*
	rm -f ${CONFIG_DIR}/auto.sh

target:
	mkdir -p $@

${CONFIG_DIR}:
	cp -r example-config $@

${CONFIG_DIR}/auto.sh: ${CONFIG_DIR}
	${CONFIG_DIR}/printmore > $@


${MOUNT}/alc-snippet: alc-snippet target/res-test-snippet
	cp alc-snippet $@

${MOUNT}/alc-snippet-assemble: alc-snippet-assemble target/res-test-snippet
	cp alc-snippet-assemble $@

${MOUNT}/alm-snippet: alm-snippet target/res-test-snippet
	cp alm-snippet $@

target/res-test-snippet: test-snippet alm-snippet ${MOUNT}/alc-generate-help
	./test-snippet && touch $@


target/res-test-snippet-config: ${CONFIG_DIR} alm-snippet test-snippet-config
	./test-snippet-config && touch $@


${HOME}/.config/sxhkd/sxhkdrc: sxhkd/alc-snippet-to-sxhkd target/res-test-snippet-to-sxhkd
	cp $@ $@.bk
	sxhkd/alc-snippet-to-sxhkd > $@

target/res-test-snippet-to-sxhkd: sxhkd/test-snippet-to-sxhkd sxhkd/alc-snippet-to-sxhkd ${MOUNT}/alm-snippet
	sxhkd/test-snippet-to-sxhkd && touch $@


${HOME}/.config/zsh/alsnip-aliases.sh: $(wildcard ${CONFIG_DIR}/*) target/res-test-snippet-config ${MOUNT}/alm-snippet
	cp $@ $@.bk || :
	alm-snippet aliases-as-posix > $@


