part of api;

class PrayTimeApi {
  final Dio _dio = Dio();
  final _baseUrl = 'https://api.pray.zone/v2';

  Future<PrayTime> getPrayTime(String city, String date) async {
    PrayTime prayTime = PrayTime();
    try {
      final url = _baseUrl + '/times/day.json';
      Response response = await _dio.get(
        url,
        queryParameters: {"city": city, "date": date},
      );
      prayTime = PrayTime.fromJson(response.data);
      getx.Get.snackbar("Success", "Data loaded");
    } catch (e) {
      // print(e);
      getx.Get.snackbar("Error", "error:${e.toString()}");
    }
    return prayTime;
  }
}
