function color_echo()
###
 # @Author: svensjxu
 # @Date: 2024-07-09 11:33:22
 # @LastEditors: svensjxu
 # @LastEditTime: 2024-07-09 11:40:36
 # @FilePath: /projects/1/shell/color.sh
 # @Description: 
 # 
 # Copyright (c) 2024 by tcencent.com, All Rights Reserved. 

report_notice() {
    echo -e "\033[33m [notice] $1 \033[0m"
}
report_common() {
    echo -e "[debug] $1"
}

report_success() {
    echo -e "\033[32m[info] $1\033[0m"
}

report_failed() {
    echo -e "\033[31m[error] $1\033[0m"
}
error_exit() {
    report_failed $1
    exit 1
}

 
### 
{
    local str=$1
    local color=$2

    case "$color" in
       re*)
          echo -e "\033[31m $str \033[0m" ;;
       gr*)
          echo -e "\033[32m $str \033[0m" ;;
       yel*)
          echo -e "\033[33m $str \033[0m" ;;
       *)
          echo -e " $str";;
    esac
}

# 添加了一些东西  commit2 
# test mr
