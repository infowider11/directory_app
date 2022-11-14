import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/changepassword.dart';
import 'package:directory_app/pages/contactus.dart';
import 'package:directory_app/pages/mynotification.dart';
import 'package:directory_app/widgets/menubarwidgets.dart';
import 'package:flutter/material.dart';
class Acconut_Page extends StatefulWidget {
  const Acconut_Page({Key? key}) : super(key: key);

  @override
  State<Acconut_Page> createState() => _Acconut_PageState();
}

class _Acconut_PageState extends State<Acconut_Page> {
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
              child:
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Color(0xffF6F6F6), shape: BoxShape.circle,),
                  child: Image.asset('assets/images/menu1.png', width: 25,)),
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
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Change_Password()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF8AA5A7).withOpacity(0.10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Change Password',style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16
                    ),),
                    Image.asset('assets/images/forwardarrow.png',height:17 ,width:17 ,)
                  ],
                ),
              ),
            ),
            vSizedBox,
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mynotification_page()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF8AA5A7).withOpacity(0.10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Notification',style: TextStyle(
                        fontFamily: 'RobotoMedium',
                        fontSize: 16
                    ),),
                    Image.asset('assets/images/forwardarrow.png',height:17 ,width:17 ,)
                  ],
                ),
              ),
            ),
            vSizedBox,
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contact_us()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF8AA5A7).withOpacity(0.10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Contact Us',style: TextStyle(
                        fontFamily: 'RobotoMedium',
                        fontSize: 16
                    ),),
                    Image.asset('assets/images/forwardarrow.png',height:17 ,width:17 ,)
                  ],
                ),
              ),
            ),
            vSizedBox,
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF3FD4BE)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Logout',style: TextStyle(
                      fontFamily: 'RobotoBold',
                      fontSize: 16,
                    color: MyColors.whiteColor
                  ),),
                  Image.asset('assets/images/forwardarrow.png',height:17 ,width:17,color: MyColors.whiteColor,)
                ],
              ),
            ),
          ],
        ),
      ),
        drawer:Menu_Bar(),
    );
  }
}
