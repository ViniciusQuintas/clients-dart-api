part of api;

class ClientesController implements Controller {
  final GetClientesUseCases getClientesUseCases;

  ClientesController({required this.getClientesUseCases});
  @override
  String get route => '/clientes';

  @override
  Map<String, GetClienteshandler> get handlers => {
        'GET': GetClienteshandler(getClientesUseCase: getClientesUseCases),
      };
}
