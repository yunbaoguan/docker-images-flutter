FROM cirrusci/flutter:base

ARG flutter_version

ENV FLUTTER_HOME ${HOME}/sdks/flutter
ENV FLUTTER_ROOT $FLUTTER_HOME
ENV FLUTTER_VERSION $flutter_version

RUN git clone --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin
ENV PUB_HOSTED_URL https://pub.flutter-io.cn
ENV FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn

# doctor
RUN flutter doctor
