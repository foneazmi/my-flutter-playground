part of api;

class PrayTimeApi extends GetConnect {
  final _baseUrl = 'https://api.pray.zone/v2';

  Future<Response> getPrayTime(String city, String date) =>
      get(_baseUrl + '/times/day.json', query: {'city': city, 'date': date});
}
