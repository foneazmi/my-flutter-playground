part of controller;

class PrayTimeController extends GetxController {
  final PrayTimeRepository _prayTimeRepository = PrayTimeRepository();

  var error = false.obs;
  var loading = false.obs;

  var imsak = "-".obs;
  var sunrise = "-".obs;
  var fajr = "-".obs;
  var dhuhr = "-".obs;
  var asr = "-".obs;
  var sunset = "-".obs;
  var maghrib = "-".obs;
  var isha = "-".obs;
  var midnight = "-".obs;
  var cityObs = "-".obs;

  getPrayTime(city, date) async {
    loading.value = true;
    try {
      final response = await _prayTimeRepository.getPrayTime(city, date);
      final times = response.body['results']['datetime'][0]['times'];
      final location = response.body['results']['location'];
      imsak.value = times['Imsak'];
      sunrise.value = times['Sunrise'];
      fajr.value = times['Fajr'];
      dhuhr.value = times['Dhuhr'];
      asr.value = times['Asr'];
      sunset.value = times['Sunset'];
      maghrib.value = times['Maghrib'];
      isha.value = times['Isha'];
      midnight.value = times['Midnight'];
      cityObs.value = location['city'];
    } catch (e) {
      // print(e);
    } finally {
      loading.value = false;
    }
  }
}
