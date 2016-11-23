#!/bin/bash

set -eu

echo $2
wget --quiet --mirror http://$1
html-pdf $1 /output/$2
