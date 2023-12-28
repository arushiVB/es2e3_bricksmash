#!/bin/bash
{
   for c in {0..9}; do
      convert xc:none[32x32] -background none -fill black -font good_times.otf -pointsize 28 \
         -gravity center -annotate 0 "$c" miff:-
   done

} | convert -dispose background miff:- +append output.bmp