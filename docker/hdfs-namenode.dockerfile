#################
#
# HDFS Namenode
#
#################

FROM reynoldsm88/hdfs-parent

ENV NAME_NODE_DIR $HDFS_DATA_ROOT/namenode

# HDFS client, http, and https ports
EXPOSE 9000 50070 50470 

CMD $HADOOP_PREFIX/bin/hdfs namenode -format -force && $HADOOP_PREFIX/bin/hdfs namenode