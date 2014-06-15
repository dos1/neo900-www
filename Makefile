PY=python
PELICAN=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

SSH_HOST=neo900.org
SSH_PORT=22022
SSH_USER=dos1
SSH_TARGET_DIR=/srv/www/htdocs

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

help:
	@echo 'Makefile for a pelican Web site                                        '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make clean                       remove the generated files         '
	@echo '   make html                        (re)generate the web site          '
	@echo '   make start [PORT=8000]           start/restart develop_server.sh    '
	@echo '   make stop                        stop local server                  '
	@echo '   make build                       generate using production settings '
	@echo '   make upload                      upload the web site via rsync+ssh  '
	@echo '                                                                       '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html'
	@echo '                                                                       '

html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

start:
ifdef PORT
	$(BASEDIR)/develop_server.sh restart $(PORT)
else
	$(BASEDIR)/develop_server.sh restart
endif

stop:
	$(BASEDIR)/develop_server.sh stop

build:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

upload: build
	ln -s /srv/hidden $(OUTPUTDIR)/hidden
	ln -s /srv/stuff $(OUTPUTDIR)/stuff
	ln -s /srv/photos $(OUTPUTDIR)/photos
	cp $(BASEDIR)/mysql_connect.inc.php $(OUTPUTDIR)/
	rsync -e "ssh -p $(SSH_PORT)" -P -rvz -l --delete $(OUTPUTDIR)/ $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR) --cvs-exclude

.PHONY: html help clean start stop build upload
