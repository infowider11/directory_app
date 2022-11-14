import 'package:carousel_slider/carousel_slider.dart';
import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class Explore_Page extends StatefulWidget {
  const Explore_Page({Key? key}) : super(key: key);

  @override
  State<Explore_Page> createState() => _Explore_PageState();
}

class _Explore_PageState extends State<Explore_Page> {
  TextEditingController code = TextEditingController();
  double _value = 50;
  final CarouselController _controller = CarouselController();

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth:35 ,
        leading:
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset('assets/images/backarrow.png',),
          ),
        ),
        title: Text(
          'Explore Our Offers',
          style: TextStyle(
              color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
        ),
        shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
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
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                          color: MyColors.whitelight,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: MyColors.secondary, width: 1),
                          image: DecorationImage(
                              image: AssetImage('assets/images/bigsalebanner.png'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter
                          )
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
                Text('Explore Our Offers',style: TextStyle(
                  fontSize: 18, fontFamily: 'medium'
                ),),
                GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                        elevation:1 ,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 500,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)
                                )
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                 
                                  vSizedBox,
                                  Text('Search Offers',style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'medium',
                                    color: MyColors.labletextcolor,

                                  ),),

                                  CustomTextField1(
                                    controller: code,

                                  ),
                                  vSizedBox4,
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Select By Radius',style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'medium',
                                          color: MyColors.Primary,

                                        )),
                                        Text('100m',style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'medium',
                                          color: MyColors.Primary,

                                        ))

                                      ],
                                    ),
                                  ),
                                  vSizedBox,
                                  Slider(
                                    min: 0.0,
                                    max: 100.0,
                                    activeColor: Colors.purple,
                                    inactiveColor: Colors.purple.shade100,
                                    thumbColor: Colors.pink,
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                  vSizedBox8,
                                  vSizedBox8,

                                  RoundEdgedButton(
                                    text: 'Filter Now',
                                    textColor: MyColors.whiteColor,
                                    color: MyColors.introscreenheadcolor,
                                    width: 350,
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Image.asset('assets/images/setting.png',height: 20,))
              ],
            ),
            vSizedBox2,
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              // crossAxisCount: sixCatList.length,
              crossAxisCount: 2,
              clipBehavior: Clip.none,
              children: [
                for (var i = 0; i <4; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BusinessBlock(
                        icon: 'assets/images/home5.png',
                        title: 'Coffee House',
                        review: false,
                      ),
                    ],
                  ),
                // GestureDetector(
                //   onTap: ()async{
                //     setState(() {
                //       pressAttention1 = !pressAttention1;
                //     });
                //     await Future.delayed(Duration(milliseconds: 300));
                //     await Navigator.pushNamed(context, Category_Page.id);
                //     setState(() {
                //       pressAttention1 = !pressAttention1;
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color:pressAttention1? MyColors.primaryColor: Colors.white,
                //       borderRadius: BorderRadius.circular(15),
                //         boxShadow:[
                //           boxShadow
                //         ]
                //     ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         height: 48,
                //         width: 48,
                //         decoration: BoxDecoration(
                //           color: pressAttention1? Colors.white.withOpacity(0.15):MyColors.primaryColor.withOpacity(0.15),
                //           borderRadius: BorderRadius.circular(20),
                //         ),
                //        child:Column(
                //          crossAxisAlignment: CrossAxisAlignment.center,
                //          mainAxisAlignment: MainAxisAlignment.center,
                //          children: [
                //            Image.asset(MyImages.icon2, width: 24, height: 24, fit: BoxFit.fitHeight,),
                //          ],
                //        ),
                //       ),
                //       SizedBox(height: 5,),
                //       ParagraphText(
                //         text: 'Appliance\nServices',
                //         fontSize: 9,
                //         textAlign: TextAlign.center,
                //         color: pressAttention1? Colors.white: Colors.black.withOpacity(0.70),
                //       )
                //     ],
                //   ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: ()async{
                //     setState(() {
                //       pressAttention2 = !pressAttention2;
                //     });
                //     await Future.delayed(Duration(milliseconds: 300));
                //     await Navigator.pushNamed(context, Category_Page.id);
                //     setState(() {
                //       pressAttention2 = !pressAttention2;
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color:pressAttention2? MyColors.primaryColor: Colors.white,
                //       borderRadius: BorderRadius.circular(15),
                //         boxShadow:[
                //           boxShadow
                //         ]
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 48,
                //           width: 48,
                //           decoration: BoxDecoration(
                //             color: pressAttention2? Colors.white.withOpacity(0.15):MyColors.primaryColor.withOpacity(0.15),
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           child:Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.asset(MyImages.icon3, width: 24, height: 24, fit: BoxFit.fitHeight,),
                //             ],
                //           ),
                //         ),
                //         SizedBox(height: 5,),
                //         ParagraphText(
                //           text: 'Digital\nMarketing',
                //           fontSize: 9,
                //           textAlign: TextAlign.center,
                //           color: pressAttention2? Colors.white: Colors.black.withOpacity(0.70),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: ()async{
                //     setState(() {
                //       pressAttention3 = !pressAttention3;
                //     });
                //     await Future.delayed(Duration(milliseconds: 300));
                //     await Navigator.pushNamed(context, Category_Page.id);
                //     setState(() {
                //       pressAttention3 = !pressAttention3;
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color:pressAttention3? MyColors.primaryColor: Colors.white,
                //       borderRadius: BorderRadius.circular(15),
                //         boxShadow:[
                //           boxShadow
                //         ]
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 48,
                //           width: 48,
                //           decoration: BoxDecoration(
                //             color: pressAttention3? Colors.white.withOpacity(0.15):MyColors.primaryColor.withOpacity(0.15),
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           child:Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.asset(MyImages.icon4, width: 24, height: 24, fit: BoxFit.fitHeight,),
                //             ],
                //           ),
                //         ),
                //         SizedBox(height: 5,),
                //         ParagraphText(
                //           text: 'Maid\nServices',
                //           fontSize: 9,
                //           textAlign: TextAlign.center,
                //           color: pressAttention3? Colors.white: Colors.black.withOpacity(0.70),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: ()async{
                //     setState(() {
                //       pressAttention4 = !pressAttention4;
                //     });
                //     await Future.delayed(Duration(milliseconds: 300));
                //     await Navigator.pushNamed(context, Category_Page.id);
                //     setState(() {
                //       pressAttention4 = !pressAttention4;
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color:pressAttention4? MyColors.primaryColor: Colors.white,
                //       borderRadius: BorderRadius.circular(15),
                //         boxShadow:[
                //           boxShadow
                //         ]
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 48,
                //           width: 48,
                //           decoration: BoxDecoration(
                //             color: pressAttention4? Colors.white.withOpacity(0.15):MyColors.primaryColor.withOpacity(0.15),
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           child:Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.asset(MyImages.icon5, width: 24, height: 24, fit: BoxFit.fitHeight,),
                //             ],
                //           ),
                //         ),
                //         SizedBox(height: 5,),
                //         ParagraphText(
                //           text: 'Towing\nservices',
                //           fontSize: 9,
                //           textAlign: TextAlign.center,
                //           color: pressAttention4? Colors.white: Colors.black.withOpacity(0.70),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: ()async{
                //     setState(() {
                //       pressAttention5 = !pressAttention5;
                //     });
                //     await Future.delayed(Duration(milliseconds: 300));
                //     await Navigator.pushNamed(context, Category_Page.id);
                //     setState(() {
                //       pressAttention5 = !pressAttention5;
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color:pressAttention5? MyColors.primaryColor: Colors.white,
                //       borderRadius: BorderRadius.circular(15),
                //       boxShadow:[
                //         boxShadow
                //       ]
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 48,
                //           width: 48,
                //           decoration: BoxDecoration(
                //             color: pressAttention5? Colors.white.withOpacity(0.15):MyColors.primaryColor.withOpacity(0.15),
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           child:Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.asset(MyImages.icon2, width: 24, height: 24, fit: BoxFit.fitHeight,),
                //             ],
                //           ),
                //         ),
                //         SizedBox(height: 5,),
                //         ParagraphText(
                //           text: 'Snow\nremoval',
                //           fontSize: 9,
                //           textAlign: TextAlign.center,
                //           color: pressAttention5? Colors.white: Colors.black.withOpacity(0.70),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
