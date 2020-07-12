import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_starter/built_value/serializers.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.copyWith(
        body: serializers.serialize(request.body),
      ),
    );
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(Response response) {
    // The response parameter contains raw binary JSON data by default.
    // Utilize the already written code which converts this data to a dynamic Map or a List of Maps.
    final Response dynamicResponse = super.convertResponse(response);
    // customBody can be either a BuiltList<SingleItemType> or just the SingleItemType (if there's no list).
    final BodyType customBody = _convertToCustomObject<SingleItemType>(dynamicResponse.body);

    // Return the original dynamicResponse with a no-longer-dynamic body type.
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {
    final bodyData = element['data'];

    // If the type which the response should hold is explicitly set to a dynamic Map,
    // there's nothing we can convert.
    if (bodyData is SingleItemType) return bodyData;

    if (bodyData is List)
      return _deserializeListOf<SingleItemType>(bodyData);
    else
      return _deserialize<SingleItemType>(bodyData);
  }

  BuiltList<SingleItemType> _deserializeListOf<SingleItemType>(List dynamicList) {
    // Make a BuiltList holding individual custom objects
    return BuiltList<SingleItemType>(dynamicList.map(
      (bodyData) => _deserialize<SingleItemType>(bodyData),
    ));
  }

  SingleItemType _deserialize<SingleItemType>(Map<String, dynamic> value) {
    // We have a type parameter for the BuiltValue type
    // which should be returned after deserialization.
    return serializers.deserializeWith<SingleItemType>(
      serializers.serializerForType(SingleItemType),
      value,
    );
  }
}
