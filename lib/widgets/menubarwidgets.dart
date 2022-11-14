import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/aboutus.dart';
import 'package:directory_app/pages/contactus.dart';
import 'package:directory_app/pages/exploreservicepage.dart';
import 'package:directory_app/pages/notification.dart';
import 'package:directory_app/pages/term&condition.dart';
import 'package:flutter/material.dart';

class Menu_Bar extends StatelessWidget {
  const Menu_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
             // curve: Curves.fastOutSlowIn,
             padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xFF004747),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Image.asset('assets/images/profile.png',height: 60,),
                vSizedBox,
                Text('John Doe',style: TextStyle(fontSize: 18,fontFamily: 'RobotoMedium',color:MyColors.whiteColor),),
                // vSizedBox05,
                Text('johndoe@gmail.com',style: TextStyle(fontSize: 14,fontFamily: 'Robotoregular',color: MyColors.whitelight)),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Home',style: TextStyle(
                        fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                      ),),
                      Image.asset('assets/images/forwardarrow.png',height: 15)
                    ],
                  ),
                ),
                vSizedBox,
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search Offers',style: TextStyle(
                          fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                      ),),
                      Image.asset('assets/images/forwardarrow.png',height: 15)
                    ],
                  ),
                ),
                vSizedBox,
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Explore_Page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Explore Business through Map',style: TextStyle(
                            fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                        ),),
                        Image.asset('assets/images/forwardarrow.png',height: 15)
                      ],
                    ),
                  ),
                ),
                vSizedBox,
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shops and Business',style: TextStyle(
                          fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                      ),),
                      Image.asset('assets/images/forwardarrow.png',height: 15)
                    ],
                  ),
                ),
                vSizedBox,
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Favourites',style: TextStyle(
                          fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                      ),),
                      Image.asset('assets/images/forwardarrow.png',height: 15)
                    ],
                  ),
                ),
                vSizedBox,
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Aboutus_Page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('About us',style: TextStyle(
                            fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                        ),),
                        Image.asset('assets/images/forwardarrow.png',height: 15)
                      ],
                    ),
                  ),
                ),
                vSizedBox,
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contact_us()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Contact us',style: TextStyle(
                            fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                        ),),
                        Image.asset('assets/images/forwardarrow.png',height: 15)
                      ],
                    ),
                  ),
                ),
                vSizedBox,
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Notification_page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Notifications',style: TextStyle(
                            fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                        ),),
                        Image.asset('assets/images/forwardarrow.png',height: 15)
                      ],
                    ),
                  ),
                ),
                vSizedBox,
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Term_Page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Terms and Conditions',style: TextStyle(
                            fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                        ),),
                        Image.asset('assets/images/forwardarrow.png',height: 15)
                      ],
                    ),
                  ),
                ),
                vSizedBox,
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Accounts',style: TextStyle(
                          fontSize:16,fontFamily: 'Robotoregular',color: Color(0xFF1A1C1E)
                      ),),
                      Image.asset('assets/images/forwardarrow.png',height: 15)
                    ],
                  ),
                ),
                vSizedBox,
              ],


            ),
          ),
        ],
      ),
    );
  }
}


class Menu_Bar1 extends StatelessWidget {
  const Menu_Bar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader( // <-- SEE HERE
            decoration: BoxDecoration(color: const Color(0xff004747)),
            accountName: Text(
              "Pinkesh Darji",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "pinkesh.earth@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture:Image.asset('assets/images/profile.png') ,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}




