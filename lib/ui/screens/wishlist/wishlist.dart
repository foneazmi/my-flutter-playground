part of screens;

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wishlist'),
          centerTitle: true,
          elevation: 0,
        ),
        body: const Center(
          child: Text('Wishlist'),
        ),
      ),
    );
  }
}
