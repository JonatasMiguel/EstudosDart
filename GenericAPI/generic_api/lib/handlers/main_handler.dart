import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MainHandler{
  Handler get handler{
    final router = Router();

    router.get('/', (Request req){
      return Response(200,body: 'Generic API - Started');
    });

    return router;
  }
}