#!/bin/bash

CPU="$(/usr/sbin/system_profiler SPHardwareDataType | grep 'Apple M1')"
IBRIDGE="$(/usr/sbin/system_profiler SPiBridgeDataType | /usr/bin/grep 'Model Name')"

if [[ -z "$CPU" ]]; then
	if [[ "${IBRIDGE}" == "" ]]; then
        /bin/echo "<result>None</result>"
	else
        /bin/echo "<result>${IBRIDGE}</result>"
    fi
else
	/bin/echo "<result>${CPU} (T2 Integrated)</result>"
fi

exit 0