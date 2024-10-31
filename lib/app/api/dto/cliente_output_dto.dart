part of api;

class ClienteOutputDto {
  final int id;
  final String nome;
  final String email;
  final String telefone;

  ClienteOutputDto(
      {required this.id,
      required this.nome,
      required this.email,
      required this.telefone});
}
