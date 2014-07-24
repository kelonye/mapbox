component = ./node_modules/component-hooks/node_modules/.bin/component

default: node_modules public

node_modules:
	@npm install

components:
	@$(component) install

public:
	$(component) build -n $@ -o $@
	@touch $@

example: default
	@xdg-open example/index.html

clean:
	@rm -rf public

.PHONY: clean example