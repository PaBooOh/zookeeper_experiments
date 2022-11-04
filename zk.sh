#!/bin/bash
case $1 in
"start"){
for i in node112 node113 node114 node115 node116 node117 node118 node119 node120 node121 node123
do
 echo ---------- zookeeper $i 启动 ------------
ssh $i "/local/ddps2211/module/zookeeper-3.5.10/bin/zkServer.sh start"
done
};;
"stop"){
for i in node112 node113 node114 node115 node116 node117 node118 node119 node120 node121 node123
do
 echo ---------- zookeeper $i 停止 ------------
ssh $i "/local/ddps2211/module/zookeeper-3.5.10/bin/zkServer.sh stop"
done
};;
"status"){
for i in node112 node113 node114 node115 node116 node117 node118 node119 node120 node121 node123
do
 echo ---------- zookeeper $i 状态 ------------
ssh $i "/local/ddps2211/module/zookeeper-3.5.10/bin/zkServer.sh status"
done
};;
esac

