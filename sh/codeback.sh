#!/bin/zsh
set -e

sudo -S chown lordryu /opt/visual-studio-code/resources/app/out/vs/workbench/ -R
chmod ugo+rwx /opt/visual-studio-code/resources/app/out/vs/workbench/

exit 0;
