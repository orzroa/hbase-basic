java -Dfile.encoding=UTF-8 -classpath "target/classes:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-server/2.3.2/hbase-server-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/thirdparty/hbase-shaded-protobuf/3.3.0/hbase-shaded-protobuf-3.3.0.jar:/home/ubuntu/.m2/repository/org/apache/hbase/thirdparty/hbase-shaded-netty/3.3.0/hbase-shaded-netty-3.3.0.jar:/home/ubuntu/.m2/repository/org/apache/hbase/thirdparty/hbase-shaded-miscellaneous/3.3.0/hbase-shaded-miscellaneous-3.3.0.jar:/home/ubuntu/.m2/repository/com/google/errorprone/error_prone_annotations/2.3.4/error_prone_annotations-2.3.4.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-common/2.3.2/hbase-common-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-logging/2.3.2/hbase-logging-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/thirdparty/hbase-shaded-gson/3.3.0/hbase-shaded-gson-3.3.0.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-http/2.3.2/hbase-http-2.3.2.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-util/9.3.28.v20191105/jetty-util-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-util-ajax/9.3.28.v20191105/jetty-util-ajax-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-http/9.3.28.v20191105/jetty-http-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-security/9.3.28.v20191105/jetty-security-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/core/jersey-server/2.25.1/jersey-server-2.25.1.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/core/jersey-common/2.25.1/jersey-common-2.25.1.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/bundles/repackaged/jersey-guava/2.25.1/jersey-guava-2.25.1.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/osgi-resource-locator/1.0.1/osgi-resource-locator-1.0.1.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/core/jersey-client/2.25.1/jersey-client-2.25.1.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/media/jersey-media-jaxb/2.25.1/jersey-media-jaxb-2.25.1.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/hk2-api/2.5.0-b32/hk2-api-2.5.0-b32.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/hk2-utils/2.5.0-b32/hk2-utils-2.5.0-b32.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/external/aopalliance-repackaged/2.5.0-b32/aopalliance-repackaged-2.5.0-b32.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/external/javax.inject/2.5.0-b32/javax.inject-2.5.0-b32.jar:/home/ubuntu/.m2/repository/org/glassfish/hk2/hk2-locator/2.5.0-b32/hk2-locator-2.5.0-b32.jar:/home/ubuntu/.m2/repository/org/javassist/javassist/3.20.0-GA/javassist-3.20.0-GA.jar:/home/ubuntu/.m2/repository/javax/validation/validation-api/1.1.0.Final/validation-api-1.1.0.Final.jar:/home/ubuntu/.m2/repository/org/glassfish/jersey/containers/jersey-container-servlet-core/2.25.1/jersey-container-servlet-core-2.25.1.jar:/home/ubuntu/.m2/repository/javax/ws/rs/javax.ws.rs-api/2.0.1/javax.ws.rs-api-2.0.1.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-protocol/2.3.2/hbase-protocol-2.3.2.jar:/home/ubuntu/.m2/repository/javax/annotation/javax.annotation-api/1.2/javax.annotation-api-1.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-protocol-shaded/2.3.2/hbase-protocol-shaded-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-procedure/2.3.2/hbase-procedure-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-zookeeper/2.3.2/hbase-zookeeper-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-replication/2.3.2/hbase-replication-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-metrics-api/2.3.2/hbase-metrics-api-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-metrics/2.3.2/hbase-metrics-2.3.2.jar:/home/ubuntu/.m2/repository/commons-codec/commons-codec/1.13/commons-codec-1.13.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-hadoop-compat/2.3.2/hbase-hadoop-compat-2.3.2.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-hadoop2-compat/2.3.2/hbase-hadoop2-compat-2.3.2.jar:/home/ubuntu/.m2/repository/javax/activation/javax.activation-api/1.2.0/javax.activation-api-1.2.0.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-asyncfs/2.3.2/hbase-asyncfs-2.3.2.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-server/9.3.28.v20191105/jetty-server-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-io/9.3.28.v20191105/jetty-io-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-servlet/9.3.28.v20191105/jetty-servlet-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-webapp/9.3.28.v20191105/jetty-webapp-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/eclipse/jetty/jetty-xml/9.3.28.v20191105/jetty-xml-9.3.28.v20191105.jar:/home/ubuntu/.m2/repository/org/glassfish/web/javax.servlet.jsp/2.3.2/javax.servlet.jsp-2.3.2.jar:/home/ubuntu/.m2/repository/org/glassfish/javax.el/3.0.1-b12/javax.el-3.0.1-b12.jar:/home/ubuntu/.m2/repository/javax/servlet/jsp/javax.servlet.jsp-api/2.3.1/javax.servlet.jsp-api-2.3.1.jar:/home/ubuntu/.m2/repository/com/github/ben-manes/caffeine/caffeine/2.8.1/caffeine-2.8.1.jar:/home/ubuntu/.m2/repository/org/checkerframework/checker-qual/3.1.0/checker-qual-3.1.0.jar:/home/ubuntu/.m2/repository/io/dropwizard/metrics/metrics-core/3.2.6/metrics-core-3.2.6.jar:/home/ubuntu/.m2/repository/com/google/protobuf/protobuf-java/2.5.0/protobuf-java-2.5.0.jar:/home/ubuntu/.m2/repository/commons-io/commons-io/2.6/commons-io-2.6.jar:/home/ubuntu/.m2/repository/org/apache/commons/commons-lang3/3.9/commons-lang3-3.9.jar:/home/ubuntu/.m2/repository/org/slf4j/slf4j-api/1.7.30/slf4j-api-1.7.30.jar:/home/ubuntu/.m2/repository/org/apache/commons/commons-math3/3.6.1/commons-math3-3.6.1.jar:/home/ubuntu/.m2/repository/org/apache/zookeeper/zookeeper/3.5.7/zookeeper-3.5.7.jar:/home/ubuntu/.m2/repository/org/apache/zookeeper/zookeeper-jute/3.5.7/zookeeper-jute-3.5.7.jar:/home/ubuntu/.m2/repository/io/netty/netty-handler/4.1.45.Final/netty-handler-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-common/4.1.45.Final/netty-common-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-buffer/4.1.45.Final/netty-buffer-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-transport/4.1.45.Final/netty-transport-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-resolver/4.1.45.Final/netty-resolver-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-codec/4.1.45.Final/netty-codec-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-transport-native-epoll/4.1.45.Final/netty-transport-native-epoll-4.1.45.Final.jar:/home/ubuntu/.m2/repository/io/netty/netty-transport-native-unix-common/4.1.45.Final/netty-transport-native-unix-common-4.1.45.Final.jar:/home/ubuntu/.m2/repository/org/jamon/jamon-runtime/2.4.1/jamon-runtime-2.4.1.jar:/home/ubuntu/.m2/repository/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar:/home/ubuntu/.m2/repository/org/apache/htrace/htrace-core4/4.2.0-incubating/htrace-core4-4.2.0-incubating.jar:/home/ubuntu/.m2/repository/com/lmax/disruptor/3.4.2/disruptor-3.4.2.jar:/home/ubuntu/.m2/repository/org/apache/commons/commons-crypto/1.0.0/commons-crypto-1.0.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-distcp/2.10.0/hadoop-distcp-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-common/2.10.0/hadoop-common-2.10.0.jar:/home/ubuntu/.m2/repository/com/google/guava/guava/11.0.2/guava-11.0.2.jar:/home/ubuntu/.m2/repository/commons-cli/commons-cli/1.2/commons-cli-1.2.jar:/home/ubuntu/.m2/repository/xmlenc/xmlenc/0.52/xmlenc-0.52.jar:/home/ubuntu/.m2/repository/org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2.jar:/home/ubuntu/.m2/repository/org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4.jar:/home/ubuntu/.m2/repository/commons-net/commons-net/3.1/commons-net-3.1.jar:/home/ubuntu/.m2/repository/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar:/home/ubuntu/.m2/repository/org/mortbay/jetty/jetty/6.1.26/jetty-6.1.26.jar:/home/ubuntu/.m2/repository/org/mortbay/jetty/jetty-util/6.1.26/jetty-util-6.1.26.jar:/home/ubuntu/.m2/repository/org/mortbay/jetty/jetty-sslengine/6.1.26/jetty-sslengine-6.1.26.jar:/home/ubuntu/.m2/repository/com/sun/jersey/jersey-json/1.9/jersey-json-1.9.jar:/home/ubuntu/.m2/repository/org/codehaus/jettison/jettison/1.1/jettison-1.1.jar:/home/ubuntu/.m2/repository/com/sun/xml/bind/jaxb-impl/2.2.3-1/jaxb-impl-2.2.3-1.jar:/home/ubuntu/.m2/repository/javax/xml/bind/jaxb-api/2.2.2/jaxb-api-2.2.2.jar:/home/ubuntu/.m2/repository/javax/xml/stream/stax-api/1.0-2/stax-api-1.0-2.jar:/home/ubuntu/.m2/repository/javax/activation/activation/1.1/activation-1.1.jar:/home/ubuntu/.m2/repository/com/sun/jersey/jersey-server/1.9/jersey-server-1.9.jar:/home/ubuntu/.m2/repository/asm/asm/3.1/asm-3.1.jar:/home/ubuntu/.m2/repository/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar:/home/ubuntu/.m2/repository/log4j/log4j/1.2.17/log4j-1.2.17.jar:/home/ubuntu/.m2/repository/net/java/dev/jets3t/jets3t/0.9.0/jets3t-0.9.0.jar:/home/ubuntu/.m2/repository/com/jamesmurty/utils/java-xmlbuilder/0.4/java-xmlbuilder-0.4.jar:/home/ubuntu/.m2/repository/commons-lang/commons-lang/2.6/commons-lang-2.6.jar:/home/ubuntu/.m2/repository/commons-configuration/commons-configuration/1.6/commons-configuration-1.6.jar:/home/ubuntu/.m2/repository/commons-digester/commons-digester/1.8/commons-digester-1.8.jar:/home/ubuntu/.m2/repository/org/slf4j/slf4j-log4j12/1.7.25/slf4j-log4j12-1.7.25.jar:/home/ubuntu/.m2/repository/org/apache/avro/avro/1.7.7/avro-1.7.7.jar:/home/ubuntu/.m2/repository/com/thoughtworks/paranamer/paranamer/2.3/paranamer-2.3.jar:/home/ubuntu/.m2/repository/org/xerial/snappy/snappy-java/1.0.5/snappy-java-1.0.5.jar:/home/ubuntu/.m2/repository/com/google/code/gson/gson/2.2.4/gson-2.2.4.jar:/home/ubuntu/.m2/repository/com/jcraft/jsch/0.1.54/jsch-0.1.54.jar:/home/ubuntu/.m2/repository/org/apache/curator/curator-client/2.7.1/curator-client-2.7.1.jar:/home/ubuntu/.m2/repository/org/apache/curator/curator-recipes/2.7.1/curator-recipes-2.7.1.jar:/home/ubuntu/.m2/repository/org/apache/commons/commons-compress/1.19/commons-compress-1.19.jar:/home/ubuntu/.m2/repository/org/codehaus/woodstox/stax2-api/3.1.4/stax2-api-3.1.4.jar:/home/ubuntu/.m2/repository/com/fasterxml/woodstox/woodstox-core/5.0.3/woodstox-core-5.0.3.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-auth/2.10.0/hadoop-auth-2.10.0.jar:/home/ubuntu/.m2/repository/com/nimbusds/nimbus-jose-jwt/4.41.1/nimbus-jose-jwt-4.41.1.jar:/home/ubuntu/.m2/repository/com/github/stephenc/jcip/jcip-annotations/1.0-1/jcip-annotations-1.0-1.jar:/home/ubuntu/.m2/repository/org/apache/directory/server/apacheds-kerberos-codec/2.0.0-M15/apacheds-kerberos-codec-2.0.0-M15.jar:/home/ubuntu/.m2/repository/org/apache/directory/server/apacheds-i18n/2.0.0-M15/apacheds-i18n-2.0.0-M15.jar:/home/ubuntu/.m2/repository/org/apache/directory/api/api-asn1-api/1.0.0-M20/api-asn1-api-1.0.0-M20.jar:/home/ubuntu/.m2/repository/org/apache/directory/api/api-util/1.0.0-M20/api-util-1.0.0-M20.jar:/home/ubuntu/.m2/repository/org/apache/curator/curator-framework/2.7.1/curator-framework-2.7.1.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-annotations/2.10.0/hadoop-annotations-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-mapreduce-client-core/2.10.0/hadoop-mapreduce-client-core-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-yarn-client/2.10.0/hadoop-yarn-client-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-yarn-api/2.10.0/hadoop-yarn-api-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-yarn-common/2.10.0/hadoop-yarn-common-2.10.0.jar:/home/ubuntu/.m2/repository/javax/servlet/servlet-api/2.5/servlet-api-2.5.jar:/home/ubuntu/.m2/repository/com/sun/jersey/jersey-core/1.9/jersey-core-1.9.jar:/home/ubuntu/.m2/repository/com/sun/jersey/jersey-client/1.9/jersey-client-1.9.jar:/home/ubuntu/.m2/repository/org/codehaus/jackson/jackson-core-asl/1.9.13/jackson-core-asl-1.9.13.jar:/home/ubuntu/.m2/repository/org/codehaus/jackson/jackson-mapper-asl/1.9.13/jackson-mapper-asl-1.9.13.jar:/home/ubuntu/.m2/repository/org/codehaus/jackson/jackson-jaxrs/1.9.13/jackson-jaxrs-1.9.13.jar:/home/ubuntu/.m2/repository/org/codehaus/jackson/jackson-xc/1.9.13/jackson-xc-1.9.13.jar:/home/ubuntu/.m2/repository/com/google/inject/guice/3.0/guice-3.0.jar:/home/ubuntu/.m2/repository/javax/inject/javax.inject/1/javax.inject-1.jar:/home/ubuntu/.m2/repository/aopalliance/aopalliance/1.0/aopalliance-1.0.jar:/home/ubuntu/.m2/repository/com/sun/jersey/contribs/jersey-guice/1.9/jersey-guice-1.9.jar:/home/ubuntu/.m2/repository/com/google/inject/extensions/guice-servlet/3.0/guice-servlet-3.0.jar:/home/ubuntu/.m2/repository/io/netty/netty/3.10.6.Final/netty-3.10.6.Final.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-hdfs/2.10.0/hadoop-hdfs-2.10.0.jar:/home/ubuntu/.m2/repository/org/apache/hadoop/hadoop-hdfs-client/2.10.0/hadoop-hdfs-client-2.10.0.jar:/home/ubuntu/.m2/repository/com/squareup/okhttp/okhttp/2.7.5/okhttp-2.7.5.jar:/home/ubuntu/.m2/repository/com/squareup/okio/okio/1.6.0/okio-1.6.0.jar:/home/ubuntu/.m2/repository/commons-daemon/commons-daemon/1.0.13/commons-daemon-1.0.13.jar:/home/ubuntu/.m2/repository/io/netty/netty-all/4.0.23.Final/netty-all-4.0.23.Final.jar:/home/ubuntu/.m2/repository/org/fusesource/leveldbjni/leveldbjni-all/1.8/leveldbjni-all-1.8.jar:/home/ubuntu/.m2/repository/com/fasterxml/jackson/core/jackson-databind/2.7.8/jackson-databind-2.7.8.jar:/home/ubuntu/.m2/repository/com/fasterxml/jackson/core/jackson-annotations/2.7.0/jackson-annotations-2.7.0.jar:/home/ubuntu/.m2/repository/com/fasterxml/jackson/core/jackson-core/2.7.8/jackson-core-2.7.8.jar:/home/ubuntu/.m2/repository/org/apache/yetus/audience-annotations/0.5.0/audience-annotations-0.5.0.jar:/home/ubuntu/.m2/repository/org/apache/hbase/hbase-client/2.3.2/hbase-client-2.3.2.jar:/home/ubuntu/.m2/repository/org/jruby/jcodings/jcodings/1.0.18/jcodings-1.0.18.jar:/home/ubuntu/.m2/repository/org/jruby/joni/joni/2.1.11/joni-2.1.11.jar" com.example.hbase.HbaseTest