import 'package:dart_frog/dart_frog.dart';

var _counter = 0;

Response onRequest(RequestContext context) {
  if (context.request.method == HttpMethod.post) {
    _counter++;
  }

  return Response.json(body: {'counter': _counter});
}
