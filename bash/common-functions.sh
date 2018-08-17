#!/bin/bash

##
# 获取指定源文件中指定key的变量值
# $1 源文件
# $2 key
##
function getProperty {
  local key=$2
  awk -F'=' -v key=$key '{if ($1 == key){print $2}}' $1
}

##
# 获取指定参数中debug调试信息
# $@ 需要分解的参数
##
function debug {
  for arg in "$@"
  do
    if [[ $arg == "debug"  ]]
    then
      set -x
    fi
  done
}

##
# 解析指定参数到全局变量
# $@ 需要分解的参数
##
function parseArg {
  for arg in "$@"
  do
    local array=(${arg//=/ })
    if [[ ${#array[@]} == 2 ]]
    then
      eval ${array[0]}="${array[1]}"
    fi
  done
}

##
# 获取指定源文件中指定key的变量值
# $1 分割字符
# $2 打印长度
##
function printParting {
   for arg in "$@"
   do
      local array=(${arg//=/ })
      if [[ ${#array[@]} == 2 ]]
      then
        eval local ${array[0]}="${array[1]}"
      fi
   done
   
   if [[ $flag == "" ]]
   then
    local flag='='
   fi

   if [[ $size == "" ]]
   then
     local size=50
   fi

   for i in $(seq 1 $size)
   do
     local parting=$flag$parting
   done
   echo $parting
}

