part of api;

class GetClienteshandler {}

abstract class Controller {
  final String route;
  final Map<String, GetClienteshandler> handlers;

  Controller({required this.route, required this.handlers});
}

class ClientesController implements Controller {
  @override
  String get route => '/clientes';

  @override
  Map<String, GetClienteshandler> get handlers => {
        'GET': GetClienteshandler(),
      };
}
