import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/bussinesscategories.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Filter_Page extends StatefulWidget {
  const Filter_Page({Key? key}) : super(key: key);

  @override
  State<Filter_Page> createState() => _Filter_PageState();
}

class _Filter_PageState extends State<Filter_Page> {
  TextEditingController code = TextEditingController();

 late double age;
  bool forIos2=true;
  @override
  Widget build(BuildContext context) {
    int age = 50;
    return Scaffold(
        appBar: AppBar(
          leadingWidth:35 ,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/backarrow.png',),
            ),
          ),
          title: Text(
            'Filters',
            style: TextStyle(
                color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
          ),
          shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,

        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text('Enter Location',style: TextStyle(
              fontSize: 16,
              fontFamily: 'medium',
              color: MyColors.labletextcolor,
            ),),
            CustomTextField1(
              controller: code,
              prefixIcon: 'assets/images/location1.png',
            ),
            vSizedBox4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select By Categories',style: TextStyle(
                  fontSize: 16,fontFamily: 'medium'
                ),),
                Text('Show All',style: TextStyle(
                    fontSize: 12,fontFamily: 'medium',decoration: TextDecoration.underline,color: Color(0xff8AA5A7)
                ),)
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
            vSizedBox4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select By Radius',style: TextStyle(
                    fontSize: 16,fontFamily: 'medium'
                ),),
                Text('100m',style: TextStyle(
                    fontSize: 12,fontFamily: 'ExtraBold',color:MyColors.Primary
                ),)
              ],
            ),
            vSizedBox2,
            Slider(
              activeColor: MyColors.Primary,
              inactiveColor: Color(0xffF6F6F6),
              label: "Select Age",
              value: age.toDouble(),
              onChanged: (value) {
                setState(() {
                   age = value.toInt();
                });
              },
              min: 5,
              max: 100,
            ),
            vSizedBox4,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Open Only',style: TextStyle(
                  fontSize: 16,fontFamily: 'medium',color: Color(0xff575757),
                ),),
                CupertinoSwitch(
                  // overrides the default green color of the track
                  activeColor: Color(0xff00A2EA),
                  // color of the round icon, which moves from right to left
                  thumbColor: Colors.white,
                  // when the switch is off
                  trackColor: Color(0xff00A2EA),
                  // boolean variable value

                  value: forIos2,
                  // changes the state of the switch
                  onChanged: (value) => setState(() => forIos2 = value),
                ),

              ],
            ),



          ],

        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: RoundEdgedButton(
          text: 'Filter',
          textColor: MyColors.whiteColor,
          color: MyColors.introscreenheadcolor,
          width: 350,
          onTap: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Tab_Page()),
            // );

          },
        ),
      ),

    );
  }
}
