#!/bin/bash

if [ $# != 1 ] ; then
    echo 'Error!'
    echo 'Argument is only 1(powersave), 2(ondemand), or 3(performance)'
    exit 0
fi

if   [ $1 = 1 ] ; then
    cpufreq-selector -c 0 -g powersave
    cpufreq-selector -c 1 -g powersave
    cpufreq-selector -c 2 -g powersave
    cpufreq-selector -c 3 -g powersave
    echo 'Powersave'
elif [ $1 = 2 ] ; then
    cpufreq-selector -c 0 -g ondemand
    cpufreq-selector -c 1 -g ondemand
    cpufreq-selector -c 2 -g ondemand
    cpufreq-selector -c 3 -g ondemand
    echo 'Ondemand'
elif [ $1 = 3 ] ; then
    cpufreq-selector -c 0 -g performance
    cpufreq-selector -c 1 -g performance
    cpufreq-selector -c 2 -g performance
    cpufreq-selector -c 3 -g performance
    echo 'Performance'
else
    echo 'Error!!'
    echo 'Argument is only 1(powersave), 2(ondemand), or 3(performance)'
    exit 0
fi
