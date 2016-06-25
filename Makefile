# Tools
PUG=pug
SASS=sass
MKDIRS=mkdir -p
RM=rm -rf
LUA=lua

# Directories and files
# OUT is wehere final outputs will go
OUT=out/web
# BLD is where temporary outputs go
BLD=out/build
# RES is all the files which just get copied from src to OUT
RES=$(patsubst src/%,$(OUT)/%,$(wildcard src/images/*/*) $(wildcard src/js/*))
# OBJ is the final build outputs
OBJ=$(OUT)/index.html \
	$(OUT)/css/style.css \
	$(OUT)/bibtex.bib

# Targets
run: $(OBJ) $(RES)

clean:
	$(RM) $(OUT)
	$(RM) $(BLD)
	
$(OUT)/index.html: src/index.pug $(BLD)/team.pug $(BLD)/pubs.pug
	$(MKDIRS) $(dir $@)
	$(PUG) --basedir $(BLD) < $< > $@ || ( $(RM) $@; exit 1 )

$(OUT)/css/style.css: $(wildcard src/css/*)
	$(MKDIRS) $(dir $@)
	$(SASS) src/css/style.sass $@ || (mv $@ $(@:.css=.csserr); exit 1)

$(BLD)/team.pug: src/xform/team-to-pug.lua src/xform/util.lua src/data/team.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/pubs.pug: src/xform/pubs-to-pug.lua src/xform/util.lua src/data/pubs.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(OUT)/bibtex.bib: src/xform/pubs-to-bib.lua src/xform/pub-to-bib.lua src/xform/util.lua src/data/pubs.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(OUT)/%: src/%
	$(MKDIRS) $(dir $@)
	cp -f $< $@
