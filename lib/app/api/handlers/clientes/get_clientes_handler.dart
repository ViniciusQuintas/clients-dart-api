part of api;

class GetClienteshandler implements Handler {
  final GetClientesUseCases getClientesUseCase;

  GetClienteshandler({required this.getClientesUseCase});
  @override
  Future<ResponseHandler> call() async {
    return ResponseHandler(
        status: StatusHandler.ok, body: <ClienteOutputDto>[]);
  }
}

class GetClientesUseCases {}
