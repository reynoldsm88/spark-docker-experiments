#################
#
# Spark Worker Local Setup
#
#################

FROM reynoldsm88/spark-parent

# @michael - REMINDER - this needs to be changed to whatever the current hosts's IP address is
# this is a PITA because Docker on Mac runs in a VM and thus the --net=host option does not work properly
ENV SPARK_MASTER spark://172.17.0.1:7077

# spark.worker.ui.port
EXPOSE 8081
# SPARK_WORKER_PORT
EXPOSE 7078

CMD $SPARK/sbin/start-slave.sh $SPARK_MASTER
