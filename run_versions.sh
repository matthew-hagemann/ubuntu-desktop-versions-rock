#/usr/bin/env bash
set -e
cd /
# FIXME: move this when working on the charm
LP_CREDENTIALS_FILE=secrets/lpcred python3 versions.py
cp *.html /var/www/html/
apache2ctl restart
