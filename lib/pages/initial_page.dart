import 'package:all_quran/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({
    super.key,
  });

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetPage = [
    const HomePage(),
    const Text('Light Icon Page'),
    const Text('Sujud Icon Page'),
    const Text('Pray Page'),
    const Text('Bookmarks Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetPage.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon_bottom_bar/home_icon.svg',
                colorFilter: _selectedIndex == 0
                    ? const ColorFilter.mode(Color(0xff672CBC), BlendMode.srcIn)
                    : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon_bottom_bar/light_icon.svg',
                colorFilter: _selectedIndex == 1
                    ? const ColorFilter.mode(Color(0xff672CBC), BlendMode.srcIn)
                    : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon_bottom_bar/sujud_icon.svg',
                colorFilter: _selectedIndex == 2
                    ? const ColorFilter.mode(Color(0xff672CBC), BlendMode.srcIn)
                    : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon_bottom_bar/pray_icon.svg',
                colorFilter: _selectedIndex == 3
                    ? const ColorFilter.mode(Color(0xff672CBC), BlendMode.srcIn)
                    : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: _selectedIndex == 4
                    ? const ColorFilter.mode(Color(0xff672CBC), BlendMode.srcIn)
                    : null,
                'assets/icon_bottom_bar/bookmarks.svg',
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
