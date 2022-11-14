import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/productdetailspage.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:directory_app/widgets/menubarwidgets.dart';
import 'package:flutter/material.dart';
class Favourite_page extends StatefulWidget {
  const Favourite_page({Key? key}) : super(key: key);

  @override
  State<Favourite_page> createState() => _Favourite_pageState();
}

class _Favourite_pageState extends State<Favourite_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MainHeadingText(text: 'New York', fontSize: 18, fontFamily: 'medium',),
                Icon(Icons.expand_more, color: MyColors.blackColor, size: 16,)
              ],
            ),
            MainHeadingText(text: 'Grey Street', fontFamily: 'light',  color: MyColors.subheadcolor, fontSize: 14,)
          ],
        ),
        centerTitle: false,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _scaffoldKey.currentState?.openDrawer(),
              child: Container(padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Color(0xffF6F6F6), shape: BoxShape.circle,),child: Image.asset('assets/images/menu1.png', width: 25,)),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(color: Color(0xffF6F6F6), shape: BoxShape.circle,),
            child: Icon
              (Icons.notifications_none,color: MyColors.blackColor,),
          ),
          // IconButton(onPressed: (){}, icon: Image.asset('assets/images/bell.png', width: 20, height: 20, fit: BoxFit.fitWidth,))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Offers',style: TextStyle(fontSize: 16,fontFamily: 'medium'),),
                // Text('Show All',style: TextStyle(fontSize: 16,fontFamily: 'Light',
                //     decoration: TextDecoration.underline,
                //     color: Color(0xFF8AA5A7)),
                // ),

              ],
            ),
            vSizedBox2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                    // );
                  },
                  child: BusinessBlock(
                    icon: 'assets/images/home5.png',
                    title: 'Coffee House',
                    review: false,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                    // );
                  },
                  child: BusinessBlock(
                    icon: 'assets/images/home6.png',
                    title: 'Mc Donald',
                    review: false,
                  ),
                ),
              ],
            ),
            vSizedBox2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Rated Stores',style: TextStyle(fontSize: 16,fontFamily: 'medium'),),
                // Text('Show All',style: TextStyle(fontSize: 16,fontFamily: 'Light',
                //     decoration: TextDecoration.underline,
                //     color: Color(0xFF8AA5A7)),
                // ),

              ],
            ),
            vSizedBox2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                    // );
                  },
                  child: BusinessBlock(
                    icon: 'assets/images/home5.png',
                    title: 'Coffee House',
                    review: true,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                    // );
                  },
                  child: BusinessBlock(
                    icon: 'assets/images/home6.png',
                    title: 'Mc Donald',
                    review: true,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
        drawer:Menu_Bar()
    );
  }
}
