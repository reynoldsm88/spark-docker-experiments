#################
#
# Spark Worker Local Setup
#
#################

FROM reynoldsm88/spark-parent

ENV SPARK_MASTER spark://172.17.0.2:7077

# spark.worker.ui.port
EXPOSE 8081
# SPARK_WORKER_PORT
EXPOSE 7078

CMD $SPARK/sbin/start-slave.sh $SPARK_MASTER