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

  getPrayTime(city, date) async {
    loading.value = true;
    PrayTime prayTimeRepository =
        await _prayTimeRepository.getPrayTime(city, date);
    Times? times = prayTimeRepository.results!.datetime![0].times;
    if (times != null) {
      imsak.value = times.imsak ?? "-";
      sunrise.value = times.sunrise ?? "-";
      fajr.value = times.fajr ?? "-";
      dhuhr.value = times.dhuhr ?? "-";
      asr.value = times.asr ?? "-";
      sunset.value = times.sunset ?? "-";
      maghrib.value = times.maghrib ?? "-";
      isha.value = times.isha ?? "-";
      midnight.value = times.midnight ?? "-";
      error.value = false;
    } else {
      error.value = true;
    }
    loading.value = false;
  }
}
