import 'package:dio/dio.dart';
import 'package:hello/data/models/models.dart';

class WallhavenApi {
  final Dio _dio = Dio();
  final _baseUrl = 'https://wallhaven.cc/api/v1';

  Future<Wallhaven> getWallpaper() async {
    Response wallhavenData = await _dio.get(_baseUrl + '/search');
    Wallhaven wallhaven = Wallhaven.fromJson(wallhavenData.data);
    return wallhaven;
  }
}
