import 'package:generic_api/handlers/main_handler.dart';
import 'package:generic_api/handlers/metadata_handler.dart';
import 'package:generic_api/infra/custom_server.dart';
import 'package:shelf/shelf.dart';

void main() async {

  final builder = 
    Cascade()
      .add(MainHandler().handler)
      .add(MetaDataHandler().handler);
  
  await CustomServer().init(builder.handler);
}