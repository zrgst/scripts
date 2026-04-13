#!/usr/bin/env bash

# Dette scriptet fjerner '$' hvis filnavnet starter med det.
# Laget det etter image recovery fra en HDD ga meg 1000vis av bilder som
# alle hadde '$' som første tegn i filnavn.
#
# Gå gjennom alle filer i nåværende mappe
for file in *; do
    # Sjekk om filnavnet starter med $
    if [[ "$file" == \$* ]]; then
        
        # Lag nytt navn ved å fjerne første tegn ($)
        new_name="${file:1}"

        # Gi nytt navn (mv = rename)
        mv -- "$file" "$new_name"

        # Debug output (valgfritt)
        echo "Renamed: '$file' -> '$new_name'"
    fi
done
