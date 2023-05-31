import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MetaDataHandler{
  Handler get handler{
    final router = Router();

    router.get('/metadata/<entity>', (Request req, String entity){
      //retornar o metadado da entidade recebida como parametro
      return Response.ok("testou");
    });

    return router;
  }
}