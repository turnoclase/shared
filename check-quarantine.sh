#!/usr/bin/env bash
# Muestra recursivamente todos los ficheros del directorio actual
# que tengan el atributo extendido com.apple.quarantine activado.

find . -type f | while IFS= read -r file; do
    if xattr "$file" 2>/dev/null | grep -q "com.apple.quarantine"; then
        echo "$file"
    fi
done
