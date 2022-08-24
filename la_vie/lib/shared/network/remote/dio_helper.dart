import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper
{
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://lavie.orangedigitalcenteregypt.com/api/',
        receiveDataWhenStatusError: true,

      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query ,
    String? token,
  }) async
  {
    dio.options.headers =
    {
      'Content-Type' : 'application/json' ,
      'Authorization': token??'',
      'Accept' : 'application/json'
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async
  {
    dio.options.headers =
    {
      'Content-Type' : 'application/json' ,
      'Authorization': token??'',
      'Accept' : 'application/json',

    };
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}