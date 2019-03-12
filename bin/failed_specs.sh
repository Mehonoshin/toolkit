#!/bin/bash
# Finds all paths to failed spec files

rgrep -oN "(\./spec[/\w]+\.rb)" f.txt | uniq | tr '\n' ' '
