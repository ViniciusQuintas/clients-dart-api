import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  late ClientesController controller;

  setUpAll(() {
    controller = ClientesController();
  });

  group('ClientesController:', () {
    test('Deve conter uma route "/clientes', () async {
      expect(controller.route, '/clientes');
    });

    test('Deve conter uma key "GET" para o handler GetClientesHandler',
        () async {
      expect(controller.handlers['GET'], isA<GetClienteshandler>());
    });
  });
}
