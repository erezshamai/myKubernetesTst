FROM dart:stable

WORKDIR /app
COPY . .

RUN dart pub get
CMD ["dart", "client.dart"]
