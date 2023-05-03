import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pelem_core/network/network.dart';
import 'package:pelem_core/utils/utils.dart';

class NetworkService with DioMixin implements Dio {
  @override
  HttpClientAdapter get httpClientAdapter => NetworkClient();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ));

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: kBaseUrl,
        contentType: ContentType.json.mimeType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        queryParameters: {'api_key': kApiKey},
        validateStatus: (status) => status! < 500,
      );
}
