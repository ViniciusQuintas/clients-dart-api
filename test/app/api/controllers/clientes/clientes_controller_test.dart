import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late ClientesController controller;
  late MockGetClientesUseCase mockGetClientesUseCase;

  setUpAll(() {
    mockGetClientesUseCase = MockGetClientesUseCase();
    controller =
        ClientesController(getClientesUseCases: mockGetClientesUseCase);
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
