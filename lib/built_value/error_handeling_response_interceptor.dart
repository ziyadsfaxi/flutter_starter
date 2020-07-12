import 'dart:async';

import 'package:chopper/chopper.dart';

class HandleResponseError extends ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) async {
    if (response.error == null) {
      return response;
    }

    // var decodedResponse;
    // try {
    //   decodedResponse = json.decode(response.error);
    // } catch (e) {
    //   throw response.error;
    // }

    // throw decodedResponse;

    throw response;
  }
}
