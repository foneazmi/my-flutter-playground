part of screens;

class PrayTimeScreen extends StatelessWidget {
  PrayTimeScreen({Key? key}) : super(key: key);
  final PrayTimeController c = Get.put(PrayTimeController());

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: GetX<PrayTimeController>(
          builder: (controller) {
            if (controller.loading.value) {
              return _buildLoadingWidget();
            } else {
              return _buildPrayTimeWidget();
            }
          },
        ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Loading data from API..."),
          CircularProgressIndicator()
        ],
      ),
    );
  }

  Widget _buildPrayTimeWidget() {
    final PrayTimeController c = Get.put(PrayTimeController());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Imsak : ${c.imsak}",
          ),
          Text(
            "Sunrise ${c.sunrise}",
          ),
          Text(
            "Fajr ${c.fajr}",
          ),
          Text(
            "Dhuhr ${c.dhuhr}",
          ),
          Text(
            "Ashar ${c.asr}",
          ),
          Text(
            "Sunset ${c.sunset}",
          ),
          Text(
            "Maghrib ${c.maghrib}",
          ),
          Text(
            "Isya' ${c.isha}",
          ),
          Text(
            "Midnight ${c.midnight}",
          ),
          Text(
            "cityObs ${c.cityObs}",
          ),
          TextButton(
            onPressed: () => c.getPrayTime("Jakarta", "2022-12-01"),
            child: const Text('Get PrayTime'),
          ),
        ],
      ),
    );
  }
}
