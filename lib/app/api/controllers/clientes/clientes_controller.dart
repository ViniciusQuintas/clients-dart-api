part of api;

abstract class Controller {
  final String route;

  Controller({
    required this.route,
  });
}

class ClientesController implements Controller {
  @override
  String get route => '/clientes';
}
