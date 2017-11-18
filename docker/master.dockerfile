#################
#
# Spark Master Node Local Setup
#
#################

FROM reynoldsm88/spark-parent

# spark.master.ui.port
EXPOSE 8080
# SPARk_MASTER_PORT
EXPOSE 7077
# spark.master.rest.port
EXPOSE 6066

CMD $SPARK/sbin/start-master.sh