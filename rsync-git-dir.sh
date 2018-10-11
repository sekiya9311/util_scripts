#!/bin/bash

# arg1: connection name
# arg2: src dir
# arg3: dst dir

if [ $# -ne 3 ]; then
  echo "invalid argument count" 1>&2
  exit 1
fi

con_name=$1
src_dir=$2
dst_dir=$3

if [ ${src_dir:-1} -ne "/" ]; then
  src_dir+="/"
fi

if [ ${dst_dir:-1} -ne "/" ]; then
  dst_dir+="/"
fi

command="rsync -acvz -C"

# ssh setting
command+=" ${src_dir} ${con_name}:${dst_dir}"

# repo/.gitignore check
command+=" --exclude-from=${src_dir}.gitignore"

# print command
echo "command: ${command}"

# exec command
command

exit 0
