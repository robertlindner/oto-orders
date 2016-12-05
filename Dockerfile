FROM java:jdk
MAINTAINER Robert Lindner <robert.lindner@delivion.de>
ADD http://104.199.1.190/job/build-oto-orders/lastSuccessfulBuild/artifact/build/libs/ws-orders-0.1.0.jar /usr/myapp/ws-orders.jar
#ADD build/libs/ws-orders-0.1.0.jar /usr/myapp/ws-orders.jar
WORKDIR /usr/myapp
CMD ["java" , "-jar", "/usr/myapp/ws-orders.jar"]
