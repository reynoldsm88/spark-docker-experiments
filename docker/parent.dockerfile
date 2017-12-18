#################
#
# Parent Spark image
#
#################

FROM bpatterson/centos7-jdk8

ENV SCALA_VERSION 2.11.11
ENV SPARK_VERSION 2.2.0
ENV HADOOP_VERSION hadoop2.7
ENV SPARK_DISTRO_VERSION $SPARK_VERSION-bin-$HADOOP_VERSION
ENV SPARK_APPS_DIR /etc/spark/apps

RUN mkdir -p /etc/spark/apps
VOLUME $SPARK_APPS_DIR

# download software from lightbend and apache
RUN curl -o scala.tgz https://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz && tar -xf scala.tgz && rm scala.tgz
RUN curl -o spark.tgz http://apache.cs.utah.edu/spark/spark-$SPARK_VERSION/spark-$SPARK_DISTRO_VERSION.tgz && tar -xf spark.tgz && rm spark.tgz

ENV SCALA_HOME ./scala-$SCALA_VERSION
ENV SPARK ./spark-$SPARK_DISTRO_VERSION

# copy our configs
RUN curl -O https://raw.githubusercontent.com/reynoldsm88/spark-docker-experiments/master/spark/conf/spark-env.sh && mv spark-env.sh $SPARK/conf