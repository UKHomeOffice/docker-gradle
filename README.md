# Docker Gradle 
[![Build Status](https://travis-ci.org/UKHomeOffice/docker-gradle.svg?branch=master)](https://travis-ci.org/UKHomeOffice/docker-gradle)

Gradle in a docker image, the version of the image / tag will match the version of gradle


## Getting Started

This is to provide the gradle tool as part of a CI pipeline / local delivery development pipeline
for a service. It's to make sure that CI can operate in a complete containerised world.

Code is mounted into the container under /code where that becomes the WORKDIR and then gradle is run
from that directory on the code

### Environment Variables

* `GRADLE_VERSION` - the version of gradle to pull down and install into the docker image
* `GRADLE_ROOT` - the root of gradle
* `GRADLE_HOME` - the home directory for gradle
* `GRADLE_BIN`  - the bin directory for gradle

### Volumes

*  `/root/.gradle/caches` - this is where gradle is holding the cached files
* `/code` - This is where the code is mounted and is also the WORKDIR

### Other

## Contributing

Contributions are most certainly welcome. If you want to introduce a breaking
change or any other major change, please raise an issue first to discuss.

## License

[MIT](LICENSE)
