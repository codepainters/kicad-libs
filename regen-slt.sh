#!/bin/bash
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "(sym_lib_table"
for f in "$DIR"/symbols/*.kicad_sym; do
    name=$(basename "$f" .kicad_sym)
    descr=""
    txt="$DIR/symbols/$name.txt"
    if [ -f "$txt" ]; then
        descr=$(head -1 "$txt")
    fi
    echo "  (lib (name \"$name\")(type \"KiCad\")(uri \"$f\")(options \"\")(descr \"$descr\"))"
done
echo ")"
