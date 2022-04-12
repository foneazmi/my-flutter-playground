part of repository;

class PrayTimeRepository {
  final PrayTimeApi _prayTimeApi = PrayTimeApi();

  Future<PrayTime> getPrayTime(String city, String date) {
    return _prayTimeApi.getPrayTime(city, date);
  }
}
