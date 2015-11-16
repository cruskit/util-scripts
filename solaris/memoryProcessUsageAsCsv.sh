# This script will print out the processes on the machine sorted by memory usage in csv format.
# Assumes you have gsed installed (as Solaris sed doesn't seem to support extended regex)

# Gather the memory usage by process for all zones
# Strip leading whitespace then insert the commas for each column
# Quote the command column so it imports nicely as a csv
# Sort by VSZ (overall size) while keeping header row
ps -ef -o zone,uid,pid,ppid,osz,vsz,rss,args \
    | gsed -e 's/^[ \t]*//' \
    | gsed -e 's/,/ /g' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,/' \
    | gsed -e 's/[ ]\+/,"/' \
    | gsed -e 's/$/"/' \
    | (read -r; printf "%s\n" "$REPLY"; sort -t, -k 6 -rn)
