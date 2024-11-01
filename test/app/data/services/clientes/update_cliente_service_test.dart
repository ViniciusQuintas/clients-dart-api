import 'package:clients_dart_api/app/data/data.dart';
import 'package:clients_dart_api/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late UpdateClienteService service;
  late MockUpdateClienteGateway mockUpdateClienteGateway;
  late MockGetClienteByIdUseCase mockGetClienteByIdUseCase;

  setUpAll(() {
    mockGetClienteByIdUseCase = MockGetClienteByIdUseCase();
    mockUpdateClienteGateway = MockUpdateClienteGateway();
    service = UpdateClienteService(
      updateClienteGateway: mockUpdateClienteGateway,
      getClienteByIdUseCase: mockGetClienteByIdUseCase,
    );
  });
  group('UpdateClienteService:', () {
    test('deve atualizar um cliente', () async {
      when(() => mockGetClienteByIdUseCase.call(any()))
          .thenAnswer((_) async => clienteMock);
      when(() => mockUpdateClienteGateway.call(clienteMock))
          .thenAnswer((_) async => clienteMock);
      final cliente = await service.call(clienteMock);

      expect(cliente, isA<Cliente>());
    });

    test(
        'deve lançar um ClienteNotFoundException quando não encontrar um cliente',
        () async {
      when(() => mockGetClienteByIdUseCase.call(any()))
          .thenThrow(ClienteNotFoundException());
      when(() => mockUpdateClienteGateway.call(clienteMock))
          .thenAnswer((_) async => clienteMock);

      expect(() => service.call(clienteMock),
          throwsA(isA<ClienteNotFoundException>()));
    });
  });
}
