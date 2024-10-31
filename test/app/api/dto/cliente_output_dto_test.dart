import 'package:clients_dart_api/app/api/api.dart';
import 'package:clients_dart_api/app/domain/domain.dart';
import 'package:test/test.dart';

void main() {
  test('deve retornar uma lista de ClienteOutputDTO', () async {
    final result = ClienteOutputDTO.toCollectionDTO([
      Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone'),
    ]);

    expect(result, isA<List<ClienteOutputDTO>>());
  });
}
