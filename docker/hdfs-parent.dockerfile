#################
#
# HDFS Parent image
#
#################

FROM bpatterson/centos7-jdk8

ENV HADOOP_VERSION 2.7.4
ENV HADOOP_PREFIX hadoop-$HADOOP_VERSION
ENV HADOOP_LIBEXEC_DIR $HADOOP_PREFIX/libexec
ENV HDFS_DATA_ROOT /etc/hadoop/hdfs
ENV JAVA $JDK_HOME/bin/java

RUN curl -o hadoop.tgz http://mirror.stjschools.org/public/apache/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz && tar -xf hadoop.tgz && rm hadoop.tgz

# copy our configs & scripts

RUN curl -O https://raw.githubusercontent.com/reynoldsm88/spark-docker-experiments/master/hadoop/etc/hadoop/core-site.xml && mv core-site.xml $HADOOP_PREFIX/etc/hadoop
RUN curl -O https://raw.githubusercontent.com/reynoldsm88/spark-docker-experiments/master/hadoop/etc/hadoop/hdfs-site.xml && mv hdfs-site.xml $HADOOP_PREFIX/etc/hadoop

RUN mkdir -p $HDFS_DATA_ROOT