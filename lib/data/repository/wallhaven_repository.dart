import 'package:hello/data/models/models.dart';
import 'package:hello/data/api/wallhaven_api.dart';

class WallhavenRepository {
  final WallhavenApi _wallhavenApi = WallhavenApi();

  Future<Wallhaven> getWallpaper() {
    return _wallhavenApi.getWallpaper();
  }
}
