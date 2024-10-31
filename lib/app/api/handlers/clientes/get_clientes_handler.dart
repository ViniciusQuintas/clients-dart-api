part of api;

class GetClienteshandler implements Handler {
  @override
  Future<ResponseHandler> call() async {
    return ResponseHandler(
        status: StatusHandler.ok, body: <ClienteOutputDto>[]);
  }
}
