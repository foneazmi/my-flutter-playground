part of api;

class WallhavenApi extends GetConnect {
  final _baseUrl = 'https://wallhaven.cc/api/v1';

  Future<Response> getWallpaper() =>
      get(_baseUrl + '/search', query: {'q': 'nature'});
}
