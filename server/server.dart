import 'dart:io';

Future<void> main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);
  print('Dart server running on http://${server.address.host}:${server.port}');

  await for (var request in server) {
    request.response
      ..statusCode = HttpStatus.ok
      ..write('Hello from Dart Server!')
      ..close();
  }
}
