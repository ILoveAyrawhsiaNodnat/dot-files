if [ -z "$1" ]
then
    echo $'CC = g++ -std=c++17\nWARNINGS = -Wall -Wfatal-errors\nDEBUG = -g\nOPTIMIZE = -O1\nMACROS = -Daishwarya_tandon_is_the_best' > Makefile
else
    echo "$1: $1.cpp" >> Makefile
    echo $'\t$(CC) $(WARNINGS) $(MACROS) $(DEBUG) $(OPTIMIZE)' $1.cpp $'-o' $1 >> Makefile
fi
