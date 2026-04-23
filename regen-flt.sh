#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

echo "(fp_lib_table"
for d in "$DIR"/footprints/*.pretty; do
    name=$(basename "$d" .pretty)
    echo "  (lib (name \"$name\")(type \"KiCad\")(uri \"$d\")(options \"\")(descr \"\"))"
done
echo ")"

