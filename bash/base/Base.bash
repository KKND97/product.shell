#!/bin/bash

#################################
#bash –x 脚本名
#回显
#在变量替换之后、执行命令之前，显示脚本的每一行
#bash –v 脚本名
#详细
#在执行之前，按输入的原样打印脚本中各行
#bash –n 脚本名
#不执行
#解释但不执行命令
#
#设置
#set -x:命令回显
#set -o nounset:不使用为初始化的变量
#set -o errexit:执行错误就退出
#
#格式说明
#缩进:2空格
#
#
#版本 V1.0.1
#作者 刘敬伟
#功能 
#
#################################

##config 
set -x
set -o nounset
set -o errexit

##Define global vars

##Define functions
#log info print function
function log  {
  local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]: "
  echo "${prefix} $@" >&2
}

#main function
function main {
  :;
}

##Runing
main;