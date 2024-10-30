import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  test('Deve conter uma route "/clientes', () async {
    final controller = ClientesController();

    expect(controller.route, '/clientes');
  });

  test('Deve conter uma key "GET" para o handler GetClientesHandler', () async {
    final controller = ClientesController();

    expect(controller.handlers['GET'], isA<GetClienteshandler>());
  });
}
