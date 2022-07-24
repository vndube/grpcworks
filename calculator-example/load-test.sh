max="$1"
date
echo "url: $2
rate: $max calls / second"
#START=$(date +%s);
START=$(($(date "+%s%N")/1000000))
echo $START 

get () {
  curl -s -v "$1" 2>&1 | tr '\r\n' '\\n' | awk -v date="$(date +'%r')" '{print $0"\n-----", date}' >> /tmp/perf-test.log
}

while true
do
  #echo $(($(date +%s) - START)) | awk '{print int($1/60)":"int($1%60)}'
  echo $(($(($(date "+%s%N")/1000000))-START))
  sleep 1

  for i in `seq 1 $max`
  do
    get $2 &
  done
  START=$(($(date "+%s%N")/1000000))
done
1658673839573
((1658673871320554102/1000000))
