import 'package:http/http.dart' as http;

Future<void> main() async {
  var url = Uri.parse('http://hello-dart-service.default.svc.cluster.local/');

  var response = await http.get(url);
  
  print('Response from Server: ${response.body}');
}
