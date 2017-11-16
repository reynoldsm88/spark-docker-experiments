#################
#
# Docker file for running spark master
#
#   docker run --name spark-master -p 8180:8080 -p 7177:7077 -p 6066:6066  -i -t reynoldsm88/spark-master
#
#################

# docker build -t reynoldsm88/spark-master

FROM brunneis/centos-jdk

ENV scala_version 2.11.11
ENV spark_version 2.2.0-bin-hadoop2.7

# Keeping this to make local builds faster
# COPY scala-$scala_version.tgz .
# COPY spark-$spark_version.tgz .
# RUN tar -xf scala-$scala_version.tgz
# RUN tar -xf spark-$spark_version.tgz

# download software from lightbend and apache
RUN curl -o scala.tgz https://downloads.lightbend.com/scala/2.11.11/scala-2.11.11.tgz && tar -xf scala.tgz
RUN curl -o spark.tgz http://apache.cs.utah.edu/spark/spark-2.2.0/spark-$spark_version.tgz && tar -xf spark.tgz

ENV SCALA_HOME ./scala-$scala_version
ENV SPARK ./spark-$spark_version

# copy our configs
RUN curl -O https://raw.githubusercontent.com/reynoldsm88/spark-docker-experiments/master/spark/conf/spark-env.sh && mv spark-env.sh $SPARK/conf

ENV SCALA_HOME ./scala-$scala_version
ENV SPARK ./spark-$spark_version

# spark.master.ui.port
EXPOSE 8080
# SPARk_MASTER_PORT
EXPOSE 7077
# spark.master.rest.port
EXPOSE 6066

CMD $SPARK/sbin/start-master.sh