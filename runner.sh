#! /bin/bash
base_name="${1%.typ}"
~/.local/bin/typst watch "$1" &
okular "${base_name}.pdf" &
