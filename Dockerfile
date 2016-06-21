FROM quay.io/ukhomeofficedigital/openjdk8-jre:v0.2.0

MAINTAINER Jon Shanks "jon.shanks@digital.homeoffice.gov.uk" 

ENV GRADLE_VERSION 2.13
ENV GRADLE_ROOT /opt
ENV GRADLE_HOME /opt/gradle
ENV GRADLE_BIN /usr/bin/gradle
WORKDIR "$GRADLE_ROOT"

RUN yum clean all && yum install -y unzip
RUN curl -O -Ls "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
    && unzip "gradle-${GRADLE_VERSION}-bin.zip" \
    && ln -s "gradle-${GRADLE_VERSION}" gradle \
    && ln -s "${GRADLE_HOME}/bin/gradle" "${GRADLE_BIN}"

VOLUME ["/root/.gradle/caches"]
VOLUME ["/code"]
WORKDIR /code
ENTRYPOINT ["gradle"]
CMD ["-h"]
