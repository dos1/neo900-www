#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Sebastian Krzyszkowiak'
SITENAME = u'Neo900'
SITEURL = 'http://neo900.org'

TIMEZONE = 'Europe/Warsaw'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_RSS = 'rss.xml'

# Blogroll
LINKS =  (('Pelican', 'http://getpelican.com/'),
          ('Python.org', 'http://python.org/'),
          ('Jinja2', 'http://jinja.pocoo.org/'),
          ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 0

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

THEME = 'theme'
THEME_STATIC_DIR = '.'

SUMMARY_MAX_LENGTH = 100
DEFAULT_DATE_FORMAT = '%b %d, %Y'
LOCALE = 'C'

ARTICLE_URL = "news/{slug}"
ARTICLE_SAVE_AS = "news/{slug}.html"

PAGE_URL = "{slug}"
PAGE_SAVE_AS = "{slug}.html"