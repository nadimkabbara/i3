URGENT_VALUE=90

LOAD=$(sysctl -n vm.loadavg | awk '{print $(NF-1)}' | cut -d ' ' -f 3,6)
if [ "${LOAD}" != "" ]; then
   LOAD_PERC=$(echo "scale=0; ${LOAD} * 100" | bc -l)
   LOAD_PERC=${LOAD_PERC%5.*}

   echo "${LOAD}"
   echo "${LOAD}"
   echo "$color"

   if [ "${LOAD_PERC}" -ge "${URGENT_VALUE}" ]; then
      exit 33
   fi
fi
