import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/pages/account.dart';
import 'package:directory_app/pages/favourite.dart';
import 'package:directory_app/pages/homepage.dart';
import 'package:directory_app/pages/notification.dart';
import 'package:directory_app/pages/test.dart';
import 'package:flutter/material.dart';
class Tab_Page extends StatefulWidget {
  const Tab_Page({Key? key}) : super(key: key);

  @override
  State<Tab_Page> createState() => _Tab_PageState();
}

class _Tab_PageState extends State<Tab_Page> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home_Page(),
    // abc(),
    Favourite_page(),
    Notification_page(),
    Acconut_Page(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      print('pressed');
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              boxShadowtop
            ]
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        elevation: 0,
        unselectedFontSize: 10,
        selectedLabelStyle: TextStyle(fontFamily: 'medium'),
        unselectedLabelStyle: TextStyle(fontFamily: 'medium'),
        unselectedItemColor:Color(0xff545454).withOpacity(0.40),
          items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(2),
              child: ImageIcon(
                AssetImage('assets/images/home.png'),
                color: Color(0xffB4B5B6),
                size:20,
              ),
            ),
            // icon: Icon(Icons.),
            activeIcon:Padding(
              padding: const EdgeInsets.all(2),
              child: ImageIcon(
                AssetImage('assets/images/home.png'),
                color: MyColors.activeicon,
                size: 20,
              ),
            ),
            label: 'Home',
            backgroundColor: MyColors.activeicon,

          ),
            BottomNavigationBarItem(
            label: 'Favourite',
              icon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ImageIcon(
                    AssetImage('assets/images/heartflat.png'),
                    color: Color(0xffB4B5B6),
                    size: 20,
                  ),
                ),
              ],
            ),
            activeIcon: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ImageIcon(
                    AssetImage('assets/images/heartflat.png'),
                    color: MyColors.activeicon,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ImageIcon(
                    AssetImage('assets/images/bellflat.png'),
                    color: Color(0xffB4B5B6),
                    size: 20,
                  ),
                ),
              ],
            ),
            activeIcon: Stack(
              children: <Widget>[
                // Icon(Icons.shopping_cart, size: 30, color: themecolor,),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ImageIcon(
                    AssetImage('assets/images/bellflat.png'),
                    color: MyColors.activeicon,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(

            icon: Padding(
              padding: const EdgeInsets.all(2),
              child: ImageIcon(
                AssetImage('assets/images/userflat.png'),
                color: Color(0xffB4B5B6),
                size: 20,
              ),
            ),
            activeIcon: Padding(
              padding:  EdgeInsets.all(2),
              child: ImageIcon(
                 AssetImage('assets/images/userflat.png'),
                color: MyColors.activeicon,
                size: 20,
              ),
            ),
            label: 'Accounts',
            backgroundColor:MyColors.activeicon,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.activeicon,
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}
