import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClienteshandler handler;
  late MockGetClientesUseCase mockGetClientesUseCase;

  setUpAll(() {
    mockGetClientesUseCase = MockGetClientesUseCase();
    handler = GetClienteshandler(getClientesUseCase: mockGetClientesUseCase);
  });
  test('deve retornar uma instancia  de ResponseHandler ...', () async {
    final result = await handler.call();

    expect(result, isA<ResponseHandler>());
  });

  test('deve retornar uma status ok ...', () async {
    final result = await handler.call();

    expect(result.status, StatusHandler.ok);
  });

  test('deve retornar uma lista de ClienteOutputDTO ...', () async {
    final result = await handler.call();

    expect(result.body, isA<List<ClienteOutputDto>>());
  });
}
