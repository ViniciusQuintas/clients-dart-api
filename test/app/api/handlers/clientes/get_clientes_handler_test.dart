import 'package:clients_dart_api/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  test('deve retornar uma instancia  de ResponseHandler ...', () async {
    final handler = GetClienteshandler();
    final result = await handler.call();

    expect(result, isA<ResponseHandler>());
  });

  test('deve retornar uma status ok ...', () async {
    final handler = GetClienteshandler();
    final result = await handler.call();

    expect(result.status, StatusHandler.ok);
  });

  test('deve retornar uma lista de ClienteOutputDTO ...', () async {
    final handler = GetClienteshandler();
    final result = await handler.call();

    expect(result.body, isA<List<ClienteOutputDto>>());
  });
}
