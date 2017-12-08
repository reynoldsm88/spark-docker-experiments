#################
#
# HDFS Namenode
#
#################

FROM reynoldsm88/hdfs-parent

ENV NAME_NODE_DIR $HDFS_DATA_ROOT/namenode

# Filesystem Client port
EXPOSE 9000
# Web UI
EXPOSE 50070

CMD $HADOOP_PREFIX/bin/hdfs namenode -format -force && $HADOOP_PREFIX/bin/hdfs namenode