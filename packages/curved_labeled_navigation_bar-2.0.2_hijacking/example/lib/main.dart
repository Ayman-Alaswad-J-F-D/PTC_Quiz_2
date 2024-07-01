import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: [
          // CurvedNavigationBarItem(
          //   icon: Icons.home_outlined,
          //   selectedIcon: ,
          //   label: 'Home',
          // ),
          // CurvedNavigationBarItem(
          //   icon: Icons.search,
          //   label: 'Search',
          // ),
          // CurvedNavigationBarItem(
          //   icon: Icons.chat_bubble_outline,
          //   label: 'Chat',
          // ),
          // CurvedNavigationBarItem(
          //   icon: Icons.newspaper,
          //   label: 'Feed',
          // ),
          // CurvedNavigationBarItem(
          //   icon: Icons.perm_identity,
          //   label: 'Personal',
          // ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              Text(_page.toString(), textScaleFactor: 10.0),
              ElevatedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  final CurvedNavigationBarState? navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState?.setPage(1);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
