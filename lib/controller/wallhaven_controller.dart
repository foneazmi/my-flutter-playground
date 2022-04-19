part of controller;

class WallhavenController extends GetxController {
  final WallhavenRepository repository = WallhavenRepository();

  @override
  void onInit() {
    getWallpaper();
    super.onInit();
  }

  var error = false.obs;
  var loading = false.obs;

  var wallpaper = [].obs;

  getWallpaper() async {
    loading.value = true;
    final response = await repository.getWallpaper();
    wallpaper.value = response.body['data'];
    loading.value = false;
  }
}
