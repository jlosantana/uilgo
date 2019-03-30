
FROM jboss/wildfly

ADD target/uilgo.war /opt/jboss/wildfly/standalone/deployments/
