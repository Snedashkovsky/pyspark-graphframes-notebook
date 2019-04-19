FROM jupyter/pyspark-notebook

USER root

RUN $SPARK_HOME/bin/spark-shell --packages graphframes:graphframes:0.7.0-spark2.4-s_2.11
RUN wget http://dl.bintray.com/spark-packages/maven/graphframes/graphframes/0.7.0-spark2.4-s_2.11/graphframes-0.7.0-spark2.4-s_2.11.jar -qO $SPARK_HOME/jars/graphframes.jar

USER $NB_UID

RUN python -m pip install graphframes
