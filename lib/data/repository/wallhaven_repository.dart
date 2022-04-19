part of repository;

class WallhavenRepository {
  final WallhavenApi _wallhavenApi = WallhavenApi();

  Future<Response> getWallpaper() {
    return _wallhavenApi.getWallpaper();
  }
}
