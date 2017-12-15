#################
#
# HDFS Namenode
#
#################

FROM reynoldsm88/hdfs-parent

ENV NAME_NODE_DIR $HDFS_DATA_ROOT/namenode

# Web UI
EXPOSE 50075

# https
EXPOSE 50475

# Data transfer
EXPOSE 50010

# metadata operations
EXPOSE 50020

CMD $HADOOP_PREFIX/bin/hdfs datanode