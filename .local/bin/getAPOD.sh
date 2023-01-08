#!/usr/bin/zsh

# ---------------------------------------------------------------
#  This script will get the NASA "Astronomy Picture Of the Day."
# ---------------------------------------------------------------

curl $(curl -X GET "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY" | sed -e 's/.*hdurl":"\(.*\)","media_type.*/\1/') -o apod # Downloads the image to "apod"
