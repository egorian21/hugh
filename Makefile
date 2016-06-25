OUT=out
JADE=pug
SASS=sass
MKDIRS=mkdir -p
RM=rm -rf

RES=$(patsubst src/%,out/%,$(wildcard src/images/*/*) $(wildcard src/js/*))
OBJ=$(OUT)/index.html \
	$(OUT)/css/style.css

all: $(OBJ) $(RES)

clean:
	$(RM) $(OUT)
	
$(OUT)/index.html: src/index.jade
	$(MKDIRS) $(dir $@)
	$(JADE) -P < $< > $@

$(OUT)/css/style.css: $(wildcard src/css/*)
	$(MKDIRS) $(dir $@)
	$(SASS) src/css/style.sass $@ || (mv $@ $(@:.css=.csserr); exit 1)

$(OUT)/%: src/%
	$(MKDIRS) $(dir $@)
	cp -f $< $@
