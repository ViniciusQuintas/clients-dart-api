import 'dart:async';

import 'package:clients_dart_api/app/domain/domain.dart';
import 'package:clients_dart_api/app/infra/infra.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockConnection connection;
  late GetClientesDAO dao;

  setUpAll(() {
    connection = MockConnection();
    dao = GetClientesDAO(connection: connection);
  });
  group('GetClientesDAO', () {
    test('deve retornar uma lista de clientes', () async {
      when(() => connection.query(any())).thenAnswer((_) async => [
            {
              'id': 1,
              'nome': 'nome',
              'email': 'email@email.com',
              'telefone': '11111-1111'
            }
          ]);

      when(() => connection.close())
          .thenAnswer((_) async => Completer<void>().complete());

      final result = await dao.call();

      expect(result, isA<List<Cliente>>());
    });
  });
}
