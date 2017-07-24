#!/bin/bash
#
#=======================================================================#
#                                                                       #
#         脚本作者:  YangLI                                             #
#         邮件地址:  xyleternal@126.com                                 #
#         当前版本:  2.0                                                #
#         创建时间:  2017年7月14日                                      #
#         功能介绍:  zookeeper docker容器启动脚本                       #
#                                                                       #
#========================================================================

ENTRY_ZK_HOME="/opt/zookeeper"
ENTRY_ZK_CONF_PATH="/data/zookeeper/conf/zoo.cfg"
ENTRY_ZK_DATA_DIR="/data/zookeeper/data"

makeConfig() {

    # ENTRY_ZK_NODE_LIST from docker env
    for node in ${ENTRY_ZK_NODE_LIST}; do
        echo ${node} >> ${ENTRY_ZK_CONF_PATH}
    done
    
    # ENTRY_ZK_MYID from docker env
    echo ${ENTRY_ZK_MYID} > ${ENTRY_ZK_DATA_DIR}/myid

}

if [ ! -e ${ENTRY_ZK_DATA_DIR}/myid ]; then
    echo "the zookeeper is empty"
    makeConfig
fi

${ENTRY_ZK_HOME}/bin/zkServer.sh start-foreground
