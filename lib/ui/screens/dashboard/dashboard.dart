// ignore_for_file: prefer_const_constructors

part of screens;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    LoremScreen(),
    PrayTimeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.home),
              label: 'Home',
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.columns),
              label: 'Lorem',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.calendar),
              label: 'Lorem',
              // backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user),
              label: 'Lorem',
              // backgroundColor: Colors.blue,
            ),
          ],
          showSelectedLabels: false,
          backgroundColor: Colors.red,

          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.red.shade200,
          type: BottomNavigationBarType.fixed, // Fixed
        ),
      ),
    );
  }
}
