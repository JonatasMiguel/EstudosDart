import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer{
  late String address;
  late int port;
  //Contrutor com parametros com valores default e atribuição direta no cabeçario do construtor
  CustomServer([this.address = "localhost", this.port= 8083]);

  Future<void> init(Handler handler) async{
    print('Server running at http://$address:$port');
    await shelf_io.serve(handler, address, port);
  }
}