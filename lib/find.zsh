
function fn {
  local fn_path=.
  local fn_file=$1
  if [ "$2" != "" ]; then
    fn_path=$1
    fn_file=$2
  fi
  /usr/bin/find "$fn_path" -name "$fn_file"
}
