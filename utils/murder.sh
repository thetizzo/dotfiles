# This finds any running process by name and kills it
function murder {
  kill -11 $(ps aux | grep $1 | grep -v grep | awk '{print $2}')
}