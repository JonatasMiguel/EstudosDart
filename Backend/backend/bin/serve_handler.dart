import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler{
  Handler get handler{
    final router = Router();

    router.get("/", (Request request) => Response(200, body: 'raiz'));

    return router;
  }
}