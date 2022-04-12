part of repository;

class WallhavenRepository {
  final WallhavenApi _wallhavenApi = WallhavenApi();

  Future<Wallhaven> getWallpaper() {
    return _wallhavenApi.getWallpaper();
  }
}
