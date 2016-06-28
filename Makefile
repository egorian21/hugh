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
# PUG files, either copied from src/content or built
PUGS=\
	awards.pug \
	compucast.pug \
	contact.pug \
	index.pug \
	intro.pug \
	menu.pug \
	prospective.pug \
	pubs.pug \
	research.pug \
	sections.pug \
	teaching.pug \
	team.pug
# OBJ is the final build outputs
OBJ=$(OUT)/index.html \
	$(OUT)/css/style.css \
	$(OUT)/bibtex.bib
	

# Targets
run: $(OBJ) $(RES)

clean:
	$(RM) $(OUT)
	$(RM) $(BLD)
	
$(OUT)/index.html: $(patsubst %,$(BLD)/%,$(PUGS))
	$(MKDIRS) $(dir $@)
	$(PUG) --basedir $(BLD) --path ignored < $(BLD)/index.pug > $@ || ( $(RM) $@; exit 1 )

$(OUT)/css/style.css: $(wildcard src/css/*)
	$(MKDIRS) $(dir $@)
	$(SASS) src/css/style.sass $@ || (mv $@ $(@:.css=.csserr); exit 1)

$(BLD)/team.pug: src/xform/team-to-pug.lua src/xform/util.lua src/content/team.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/pubs.pug: src/xform/pubs-to-pug.lua src/xform/util.lua src/content/pubs.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/menu.pug: src/xform/sections-to-menu-pug.lua src/xform/util.lua src/content/sections.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/sections.pug: src/xform/sections-to-pug.lua src/xform/util.lua src/content/sections.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/%: src/content/%
	$(MKDIRS) $(dir $@)
	cp -f $< $@

$(OUT)/bibtex.bib: src/xform/pubs-to-bib.lua src/xform/pub-to-bib.lua src/xform/util.lua src/content/pubs.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(OUT)/%: src/%
	$(MKDIRS) $(dir $@)
	cp -f $< $@
