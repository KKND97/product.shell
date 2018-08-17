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
#0、打印所有的物理网卡和mac地址
#################################

##config 
set -x
set -o nounset
set -o errexit

##Define global vars

##Define functions
#打印所有的物理网卡和对应的mac地址

function print_nic  {
  ls /sys/devices/virtual/net > virtual.data
  ls /sys/class/net|grep -v 'bonding_masters' > net.data
  sort net.data virtual.data | uniq -u > pnic.data
  for nic in $(cat pnic.data)
  do
    echo "${nic} $(cat /sys/class/net/${nic}/address)"
  done
}

#main function
function main {
  print_nic
}

##Runing
main


