import 'package:clients_dart_api/config/config.dart';
import 'package:clients_dart_api/server/server.dart';

void main() {
  ApiDI.init();
  Server.bootstrap(controllers)
      .then((server) => print('Server listening on port ${server.port}'))
      .catchError(print);
}
