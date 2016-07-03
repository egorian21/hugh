# Tools
PUG=pug
SASS=sass
MKDIRS=mkdir -p
RM=rm -rf
LUA=lua
CP=cp -f
RSYNC=rsync -e ssh -vrlptz

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
	copt.pug \
	index.pug \
	intro.pug \
	menu.pug \
	projects.pug \
	prospective.pug \
	pubs.pug \
	research.pug \
	sections.pug \
	teaching.pug \
	team.pug
EXP=$(wildcard ~/Documents/university/expenses)
EXPENSES=$(patsubst $(EXP)/%/expenses.lua, $(OUT)/expenses/public-%.pdf, $(wildcard $(EXP)/*/expenses.lua))
PUBS=$(patsubst src/%,$(OUT)/%,$(wildcard src/publications/*.pdf))
# OBJ is the final build outputs
OBJ=$(OUT)/index.html \
	$(OUT)/css/style.css \
	$(OUT)/leather.bib
COPT=$(wildcard ~/Documents/university/courses/copt)
	

# Targets
run: $(OBJ) $(RES) expenses $(EXPENSES) $(PUBS)
	
clean:
	$(RM) $(OUT)
	$(RM) $(BLD)

expenses: 
	$(MKDIRS) $(OUT)/expenses
	$(MAKE) -C $(EXP) 

$(BLD)/joined-expenses.html: $(EXP)/joined-expenses.html
	$(CP) $(EXP)/$(@F) $@

$(OUT)/expenses/public-%.pdf: $(EXP)/%/public.pdf
	$(MKDIRS) $(OUT)/expenses
	$(CP) $< $@

$(OUT)/index.html: $(patsubst %,$(BLD)/%,$(PUGS)) $(BLD)/joined-expenses.html
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

$(BLD)/projects.pug: src/xform/projects-to-pug.lua src/xform/util.lua src/content/projects.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/menu.pug: src/xform/sections-to-menu-pug.lua src/xform/util.lua src/content/sections.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/sections.pug: src/xform/sections-to-pug.lua src/xform/util.lua src/content/sections.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(BLD)/copt.pug: src/xform/copt-to-pug.lua src/xform/util.lua $(COPT)/info.lua
	$(MKDIRS) $(dir $@)
	$(LUA) $< $(COPT) > $@

$(BLD)/%: src/content/%
	$(MKDIRS) $(dir $@)
	$(CP) $< $@

$(OUT)/leather.bib: src/xform/pubs-to-bib.lua src/xform/pub-to-bib.lua src/xform/util.lua src/content/pubs.lua 
	$(MKDIRS) $(dir $@)
	$(LUA) $< > $@

$(OUT)/%: src/%
	$(MKDIRS) $(dir $@)
	$(CP) $< $@

upload: run
	$(RSYNC) $(OUT)/ hleather@staff.ssh.inf.ed.ac.uk:/home/hleather/homepage/
