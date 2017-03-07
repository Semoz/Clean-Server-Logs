# Clean_Server_Logs
shell clean server logs
清除服务器上的日志和临时文件

# 需求
服务器太多，需要一台台清理日志

# 前提
需要先设置服务器免密登录

# 解决方案
远程登录服务器 删除服务器日志或临时文件</br>
clean_logs.sh 配置 默认日志路径是/tmp、默认过期文件是180天前</br>
参数支持： </br>
-s 服务器地址</br>
-p 端口 默认：22</br>
-d 日志路径 默认 /tmp</br>
-t 文件有效期 单位：天</br>
-n 文件匹配 默认"*"</br>

crontab增加run脚本定时执行
