FROM confluentinc/cp-kafka-connect

USER root
RUN yum install -y java-21-openjdk-headless-21.0.3.0.9-1.el8.x86_64

USER appuser
ENV PATH="/usr/lib/jvm/java-21-openjdk-21.0.3.0.9-1.el8.x86_64/bin:${PATH}"
