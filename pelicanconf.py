#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'neo900'
SITENAME = u'Neo900'
SITEURL = 'http://neo900.org'

TIMEZONE = 'Europe/Warsaw'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_RSS = 'rss.xml'
TRANSLATION_FEED_ATOM = None

IGNORE_FILES = ['.*.kate-swp']

DEFAULT_PAGINATION = 0

DIRECT_TEMPLATES = ['index']

DEFAULT_CATEGORY = 'news'

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

THEME = 'theme'
THEME_STATIC_DIR = '.'

SUMMARY_MAX_LENGTH = 10000
DEFAULT_DATE_FORMAT = '%b %d, %Y'
LOCALE = 'C'

ARTICLE_URL = "news/{slug}"
ARTICLE_SAVE_AS = "news/{slug}.html"

PAGE_URL = "{slug}"
PAGE_SAVE_AS = "{slug}.html"

PLUGIN_PATH = 'plugins'
PLUGINS = ['neighbors']
