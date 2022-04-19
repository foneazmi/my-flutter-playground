part of screens;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(
                name: 'Curt Turkois',
                image:
                    'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=100&q=80',
                onPressWishlist: () {
                  Get.toNamed('/wishlist');
                },
                onPressCart: () {
                  Get.toNamed('/cart');
                },
              ),
              Carousel()
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  Carousel({
    Key? key,
  }) : super(key: key);
  final WallhavenController c = Get.put(WallhavenController());

  @override
  Widget build(BuildContext context) {
    return GetX<WallhavenController>(
      builder: (controller) {
        if (controller.loading.value) {
          return _buildLoadingWidget();
        } else {
          return _buildWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Loading data from API..."),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }

  Widget _buildWidget() {
    final WallhavenController c = Get.put(WallhavenController());
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: c.wallpaper.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.withOpacity(0.2),
                    spreadRadius: 8,
                    blurRadius: 16,
                  ),
                ],
                color: Colors.amber,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  item['thumbs']['small'],
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.red),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) =>
                      const Text('Some errors occurred!'),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
