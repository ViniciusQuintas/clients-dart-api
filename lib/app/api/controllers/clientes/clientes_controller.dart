part of api;

class ClientesController implements Controller {
  @override
  String get route => '/clientes';

  @override
  Map<String, GetClienteshandler> get handlers => {
        'GET': GetClienteshandler(),
      };
}
