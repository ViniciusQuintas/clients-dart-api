import 'package:clients_dart_api/app/api/api.dart';
import 'package:clients_dart_api/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClientesHandler handler;
  late MockGetClientesUseCase mockGetClientesUseCase;

  setUpAll(() {
    mockGetClientesUseCase = MockGetClientesUseCase();
    handler = GetClientesHandler(getClientesUseCase: mockGetClientesUseCase);
  });

  group('GetClientesHandler:', () {
    test('deve retornar uma instancia de ResponseHandler', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async => []);
      final result = await handler.call(RequestParams());

      expect(result, isA<ResponseHandler>());
    });

    test('deve retornar um status ok', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async => []);
      final result = await handler.call(RequestParams());

      expect(result.status, StatusHandler.ok);
    });

    test('deve retornar uma lista de ClienteOutputDTO', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async =>
          [Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone')]);
      final result = await handler.call(RequestParams());

      expect(result.body, isA<List<ClienteOutputDTO>>());
    });

    test(
        'deve retornar um status internalServerError quando um erro desconhecido acontencer',
        () async {
      when(() => mockGetClientesUseCase.call()).thenThrow(Exception());
      final result = await handler.call(RequestParams());

      expect(result.status, StatusHandler.internalServerError);
    });
  });
}
