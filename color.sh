function color_echo()
###
 # @Author: svensjxu
 # @Date: 2024-07-09 11:33:22
 # @LastEditors: svensjxu
 # @LastEditTime: 2024-07-09 11:37:14
 # @FilePath: /projects/1/shell/color.sh
 # @Description: 
 # 
 # Copyright (c) 2024 by tcencent.com, All Rights Reserved. 
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