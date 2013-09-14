#! /usr/bin/gnuplot -persist

set xlabel "date"
set ylabel "$" #font "Helvetica,18"

set xdata time
set timefmt "%Y%m%d"

set format x "%d.%m.%y" # or whatever
#set xrange ["20100701":"20130706"]
set xrange ["20130401":]
#set xrange ["20100701":]
set yrange [0:200]

#set logscale y
set y2tics

plot \
  'data/mtgox-btc-usd.dat' using 1:5 with lines title 'mtgox price' axes x1y1, \
  'data/bitcoin-profitability.dat' using 1:5 with lines title "Avalon ASIC #2 income per day" linetype 3 axes x1y1, \
  'data/bitcoin-profitability.dat' using 1:4 with lines title "ATI 7970 income per day" linetype 2 axes x1y1, \
  'data/bitcoin-profitability.dat' using 1:3 with lines title "Core i7 950 income per day" linetype 1 axes x1y1, \
  'data/bitcoin-profitability.dat' using 1:2 with lines title "difficulty" linetype 7 axes x1y2
