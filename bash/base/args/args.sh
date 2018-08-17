#!/bin/bash
# 命令执行:./args.sh "1 2" 3 4
#set -x

log(){
  echo $*
}

echo "调用参数中个数：" $#

log '测试$*'
for arg in $*
do
  echo $arg
done;
log '测试"$*"'
for arg in "$*"
do
  echo $arg
done;

log '测试$@'
for arg in $@
do
  echo $arg
done;
log '测试"$@"'
for arg in "$@"
do
  echo $arg
done;
