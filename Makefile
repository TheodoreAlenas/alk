
TESTS = test-snippet test-snippet-config sxhkd/test-snippet-to-sxhkd

MOUNT = ${HOME}/.local/share/alsnip
FINAL_EXECS = $(addprefix ${MOUNT}/,alc-snippet alm-snippet alm-snippet-agent-std)

CONFIG_DIR = ${HOME}/.config/alsnip

all: target ${MOUNT} ${FINAL_EXECS}
	@test -L ~/.local/bin/alm-snippet || ln -sv ${MOUNT}/alm-snippet ~/.local/bin/alm-snippet
	@test -L ~/.local/bin/alc-snippet || ln -sv ${MOUNT}/alc-snippet ~/.local/bin/alc-snippet

clean:
	rm -f ${FINAL_EXECS}
	rm target/*

${MOUNT}:
	mkdir -p $@
	cp -rT . $@

target:
	mkdir -p $@

${CONFIG_DIR}:
	cp -r example-config $@


${MOUNT}/alc-snippet: alc-snippet target/res-test-snippet
	cp alc-snippet $@

${MOUNT}/alm-snippet-agent-std: agents/alm-snippet target/res-test-snippet
	cp agents/alm-snippet $@

${MOUNT}/alm-snippet: alm-snippet target/res-test-snippet
	cp alm-snippet $@

target/res-test-snippet: test-snippet alm-snippet ${MOUNT}/alc-generate-help
	./test-snippet && touch $@


target/res-test-snippet-config: ${CONFIG_DIR} alm-snippet test-snippet-config
	./test-snippet-config && touch $@


${HOME}/.config/sxhkd/sxhkdrc: sxhkd/alc-snippet-to-sxhkd sxhkd/expand-keys.awk sxhkd/expand-scripts.awk target/res-test-snippet-to-sxhkd
	cp $@ $@.bk
	sxhkd/alc-snippet-to-sxhkd > $@

target/res-test-snippet-to-sxhkd: sxhkd/test-snippet-to-sxhkd sxhkd/alc-snippet-to-sxhkd ${MOUNT}/alm-snippet
	sxhkd/test-snippet-to-sxhkd && touch $@


${HOME}/.config/zsh/alsnip-aliases.sh: $(wildcard ${CONFIG_DIR}/*) target/res-test-snippet-config ${MOUNT}/alm-snippet
	cp $@ $@.bk || :
	alm-snippet aliases-as-posix > $@


${MOUNT}/alc-generate-help: alc-generate-help
	cp alc-generate-help $@
