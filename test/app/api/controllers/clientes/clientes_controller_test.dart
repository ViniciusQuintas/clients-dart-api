import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  test('Deve conter uma route "/clientes', () async {
    final controller = ClientesController(route: '/clientes');

    expect(controller.route, '/clientes');
  });
}
