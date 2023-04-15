FROM jupyter/pyspark-notebook:python-3.9.12

USER root

# Configure Spark
ENV SPARK_HOME=/usr/local/spark

RUN wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.1026/aws-java-sdk-bundle-1.11.1026.jar -P $SPARK_HOME/jars/ && \
    wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.1/hadoop-aws-3.2.1.jar -P $SPARK_HOME/jars/ 

