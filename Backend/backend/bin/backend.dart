import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'serve_handler.dart';
void main() async{
  final port = 8080;
  final address = "localhost";
  final serverHandler = ServeHandler();
  final server = await shelf_io.serve(serverHandler.handler, address, port);
  print("Server running in $address port: $port");
}
