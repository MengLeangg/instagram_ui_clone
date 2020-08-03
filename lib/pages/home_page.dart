import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui_clone/pages/home_screen.dart';
import 'package:instagram_ui_clone/pages/account_screen.dart';
import 'package:instagram_ui_clone/pages/follow_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _pageList = [];

  @override
  void initState() {
    super.initState();
    _pageList.add(HomeScreen());
    _pageList.add(HomeScreen());
    _pageList.add(HomeScreen());
    _pageList.add(FollowScreen());
    _pageList.add(AccountScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: _pageList[_currentPage],
      bottomNavigationBar: _buildBottom,
    );
  }

  int _currentPage = 0;

  get _buildBottom {
    return BottomNavigationBar(
      currentIndex: _currentPage,
      onTap: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Feather.home,),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.search,),
          title: Text("Search"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.plus_square,),
          title: Text("Upload"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.heart),
          title: Text("Likes"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Feather.user),
          title: Text("Account"),
        ),
      ],
    );
  }
}
