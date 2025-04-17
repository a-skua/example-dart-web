SRC := $(rhell find ./lib -name '*.dart')

.PHONY: all
all: build/index.html build/styles.css build/bootstrap.js build/main.wasm build/main.wasm.map build/main.mjs

build/:
	@mkdir $@

build/%: web/% build/
	@cp $< $@
	@echo $@

web/%.wasm.map: web/%.wasm
	@touch $@

web/%.mjs: web/%.wasm
	@touch $@

web/%.wasm: web/%.dart $(SRC)
	dart compile wasm $< -O4

.PHONY: fmt
fmt:
	deno fmt

.PHONY: serve
serve: build/
	python3 -m http.server -d $<

.PHONY: clean
clean:
	@rm -rf build
	@rm -f web/*.wasm
	@rm -f web/*.map
	@rm -f web/*.mjs
