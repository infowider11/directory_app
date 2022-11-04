import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:flutter/material.dart';
class Tab_Page extends StatefulWidget {
  const Tab_Page({Key? key}) : super(key: key);

  @override
  State<Tab_Page> createState() => _Tab_PageState();
}

class _Tab_PageState extends State<Tab_Page> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
            color: Colors.redAccent,
            boxShadow: [
              boxShadowtop
            ]
        ),
        child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 9,
        elevation: 0,
        unselectedFontSize: 9,
        selectedLabelStyle: TextStyle(fontFamily: 'medium'),
        unselectedLabelStyle: TextStyle(fontFamily: 'medium'),
        unselectedItemColor: Color(0xFF2E2E2E),
          items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: ImageIcon(
              AssetImage(MyImages.home),
              color: MyColors.subheadcolor,
              size: 28,
            ),
            activeIcon:ImageIcon(
              AssetImage(MyImages.home),
              color: MyColors.primaryColor,
              size: 28,
            ),
            // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
            // icon: Icon(Icons.home, size: 30,color: Colors.black,),
            label: 'Home',
            backgroundColor: Colors.white,

          ),
            BottomNavigationBarItem(

              icon: ImageIcon(
                AssetImage(MyImages.home),
                color: MyColors.subheadcolor,
                size: 28,
              ),
              activeIcon:ImageIcon(
                AssetImage(MyImages.home),
                color: MyColors.primaryColor,
                size: 28,
              ),
              // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
              // icon: Icon(Icons.home, size: 30,color: Colors.black,),
              label: 'Home',
              backgroundColor: Colors.white,

            ),
          // BottomNavigationBarItem(
          //   label: 'Bookings',
          //   // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
          //   icon: Stack(
          //     children: [
          //       ImageIcon(
          //         AssetImage(MyImages.document),
          //         color: MyColors.textcolor,
          //         size: 28,
          //       ),
          //     ],
          //   ),
          //   activeIcon: Stack(
          //     children: <Widget>[
          //       // Icon(Icons.shopping_cart, size: 30, color: themecolor,),
          //       ImageIcon(
          //         AssetImage(MyImages.document),
          //         color: MyColors.primaryColor,
          //         size: 28,
          //       ),
          //     ],
          //   ),
          // ),
          // BottomNavigationBarItem(
          //   label: 'Wallet',
          //   // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
          //   icon: Stack(
          //     children: [
          //       ImageIcon(
          //         AssetImage(MyImages.wallet),
          //         color: MyColors.textcolor,
          //         size: 28,
          //       ),
          //     ],
          //   ),
          //   activeIcon: Stack(
          //     children: <Widget>[
          //       // Icon(Icons.shopping_cart, size: 30, color: themecolor,),
          //       ImageIcon(
          //         AssetImage(MyImages.wallet),
          //         color: MyColors.primaryColor,
          //         size: 28,
          //       ),
          //     ],
          //   ),
          // ),
          // BottomNavigationBarItem(
          //   // icon: Icon(Icons.school, size: 30, color: Colors.black,),
          //   icon: ImageIcon(
          //     AssetImage(MyImages.profile),
          //     color: MyColors.textcolor,
          //     size: 28,
          //   ),
          //   activeIcon: ImageIcon(
          //     AssetImage(MyImages.profile),
          //     color: MyColors.primaryColor,
          //     size: 28,
          //   ),
          //   label: 'Profile',
          //   backgroundColor: Colors.white,
          // ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.primaryColor,
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}
