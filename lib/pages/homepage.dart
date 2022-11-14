import 'package:carousel_slider/carousel_slider.dart';
import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/bussinesscategories.dart';
import 'package:directory_app/pages/filter.dart';
import 'package:directory_app/pages/productdetailspage.dart';
import 'package:directory_app/pages/topratedstore.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/menubarwidgets.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();

}

class _Home_PageState extends State<Home_Page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController code = TextEditingController();
  PageController controller = PageController();
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var isChecked;
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
              child: Container(
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
              child: Icon(Icons.notifications_none,color: MyColors.blackColor,)),
          // IconButton(onPressed: (){}, icon: Image.asset('assets/images/bell.png', width: 20, height: 20, fit: BoxFit.fitWidth,))
        ],

      ),

      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CustomTextField1(
                    controller: code,
                    prefixIcon: 'assets/images/search.png',
                    // suffixIcon: 'assets/images/setting.png',
                    hintText: 'Search',
                    hinttextfontfamily: 'regular',
                    hinttextfontsize: 16,
                  ),

                  Positioned(
                    right:16,top:16,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Filter_Page()),
                          );
                        },
                          child: Image.asset('assets/images/setting.png',height:25,width:25,color:MyColors.Primary ,)))
                ],
              ),
              vSizedBox,
              CarouselSlider(
                options: CarouselOptions(
                    height: 160,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }
                ),
                items: [1,2,3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal:3),
                        padding: EdgeInsets.symmetric(horizontal:16, vertical: 16),
                        decoration: BoxDecoration(
                            color: MyColors.whitelight,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: MyColors.secondary, width: 1),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home1.png'),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.bottomCenter
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MainHeadingText(text: 'Fresh Everyday', fontSize: 20, fontFamily: 'medium', color: MyColors.whiteColor,),
                            vSizedBox05,
                            MainHeadingText(text: 'Lorem ipsum dollar ist amet, this is a dummy text', color: MyColors.whitelight, fontSize: 14, fontFamily: 'light',)
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1,2,3].asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: _current == entry.key ? 12:6,
                      height: 6.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(30),
                          color: _current == entry.key ? MyColors.Primary : Color(0xFE9AA6B8).withOpacity(0.2)
                      ),
                    ),
                  );
                }).toList(),
              ),
              vSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: TextStyle(fontSize: 16,fontFamily: 'medium'),),
                  Text('Show All',style: TextStyle(fontSize: 12,fontFamily: 'Light',
                      decoration: TextDecoration.underline,
                      color: Color(0xFF8AA5A7)),
                  ),
                ],
              ),
              vSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bussiness_Categories()),
                    );
                  },
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                      color: MyColors.container1bgcolor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        shadow,
                      ],

                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: MyColors.container2bgcolor.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 48,width: 48,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/home2.png',height: 28,width: 28,),
                            )
                          ),
                          vSizedBox05,
                          Text('Bars and\nCaffetaria',style: TextStyle(fontSize: 12,fontFamily: 'medium'),)
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bussiness_Categories()),
                    );
                  },
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                      color: MyColors.container1bgcolor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        shadow,
                      ],

                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: MyColors.container2bgcolor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 48,width: 48,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/home3.png',height: 28,width: 28,),
                              )
                          ),
                          vSizedBox05,
                          Text('Bars and\nCaffetaria',style: TextStyle(fontSize: 12,fontFamily: 'medium'),)
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bussiness_Categories()),
                    );
                  },
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                      color: MyColors.container1bgcolor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        shadow,
                      ],

                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: MyColors.container2bgcolor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 48,width: 48,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/home4.png',height: 28,width: 28,),
                              )
                          ),
                          vSizedBox05,
                          Text('Bars and\nCaffetaria',style: TextStyle(fontSize: 12,fontFamily: 'medium'),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],),
              vSizedBox2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Offers',style: TextStyle(fontSize: 16,fontFamily: 'medium'),),
                  Text('Show All',style: TextStyle(fontSize: 12,fontFamily: 'Light',
                      decoration: TextDecoration.underline,
                      color: Color(0xFF8AA5A7)),
                  ),

                ],
              ),
              vSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                        );
                      },
                    child: BusinessBlock(
                      icon: 'assets/images/home5.png',
                      title: 'Coffee House',
                      review: false,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Productdetails_Page()),
                      );
                    },
                    child: BusinessBlock(
                      icon: 'assets/images/home6.png',
                      title: 'Mc Donald',
                      review: false,
                    ),
                  ),
                ],
              ),
              vSizedBox4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated Stores',style: TextStyle(fontSize: 16,fontFamily: 'medium'),),
                  Text('Show All',style: TextStyle(fontSize: 12,fontFamily: 'Light',
                      decoration: TextDecoration.underline,
                      color: Color(0xFF8AA5A7)),
                  ),

                ],
              ),
              vSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Topratedstore_Page()),
                      );
                    },
                    child: BusinessBlock(
                      icon: 'assets/images/home5.png',
                      title: 'Coffee House',
                      review: true,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Topratedstore_Page()),
                      );
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
        )),
      ),
      drawer:Menu_Bar()
    );
  }
}
