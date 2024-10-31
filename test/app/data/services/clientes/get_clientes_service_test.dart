import 'package:clients_dart_api/app/data/data.dart';
import 'package:clients_dart_api/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockGetClientesGateway mockGetClientesGateway;
  late GetClientesService service;

  setUpAll(() {
    mockGetClientesGateway = MockGetClientesGateway();
    service = GetClientesService(getClientesGateway: mockGetClientesGateway);
  });
  group('GetClientesService', () {
    test('deve retornar uma lista de clientes', () async {
      when(() => mockGetClientesGateway.call())
          .thenAnswer((_) async => [clienteMock]);
      final result = await service.call();

      expect(result, isA<List<Cliente>>());
    });
  });
}
