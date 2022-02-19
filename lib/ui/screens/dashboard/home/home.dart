// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
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
                name: 'Farkhan Azmi',
                image:
                    'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                onPressWishlist: () {
                  // print('onPressWishlist');
                  snackbar(context, 'Wishlist');
                  // Navigator.pushNamed(context, '/wishlist');
                },
                onPressCart: () {
                  // snackbar(context, 'Cart');
                  Navigator.pushNamed(context, '/cart');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
