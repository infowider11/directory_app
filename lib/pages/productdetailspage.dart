import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/review.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class Productdetails_Page extends StatefulWidget {
  const Productdetails_Page({Key? key}) : super(key: key);

  @override
  State<Productdetails_Page> createState() => _Productdetails_PageState();
}

class _Productdetails_PageState extends State<Productdetails_Page> {
  TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/home5.png',fit: BoxFit.cover,),
                  Positioned(
                    top:25,left:15,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/images/backarrow.png',height:30,width:30,),
                    ),
                  ),

                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                // height: 100,
                // width: 100,
                decoration: BoxDecoration(
                    color: MyColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topRight:Radius.circular(40),
                      topLeft: Radius.circular(40),

                    ),
                    boxShadow: [
                      shadow
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left:15,right:15,top:6,bottom:6),
                          // height: 22,width: 49,
                          decoration: BoxDecoration(
                              color: MyColors.secondary,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:
                          Center(child: Text('Cafe',style: TextStyle(fontFamily: 'medium',fontSize: 12,color:MyColors.whiteColor),)),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/home8.png',width: 15,height: 15,),
                              hSizedBox05,
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Review_page()),
                                    );
                                  },
                                  child: Text('4.7(82 Reviews)',style: TextStyle(fontSize: 16,fontFamily: 'medium',color: MyColors.Primary),)),
                              hSizedBox,
                              Icon(Icons.favorite_outlined,color:Colors.redAccent,),
                              // Image.asset('assets/images/home7.png',height: 15,width: 16,),
                              hSizedBox,
                              Image.asset('assets/images/share.png',height: 15,width: 15,)
                            ],
                          ),
                        ),

                      ],
                    ),
                    vSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Coffee House',style: TextStyle(fontSize: 21,fontFamily: 'medium'),),
                        Container(
                          height:30,width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/off.png'))),
                          child: Center(
                              child: Text('10%',style: TextStyle(color: MyColors.whiteColor,fontFamily: 'bold',fontSize:12),)),

                        ),
                      ],
                    ),
                    vSizedBox,
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and '
                          'typesetting industry. Lorem Ipsum is simply dummy text of'
                          ' the printing and',style: TextStyle(fontSize: 15,
                        fontFamily: 'regular',
                        height: 1.5,
                        color: Color(0xFF575757).withOpacity(0.7),

                    ),),
                    vSizedBox,
                    Row(
                      children: [
                        Icon(Icons.location_on_rounded,color: Color(0xff56CF95),),
                        // Image.asset('assets/images/location.png',height: 20,width: 17,),
                        hSizedBox,
                        Text('123, Grey Street, New york city, USA',style: TextStyle(fontSize: 14,fontFamily: 'medium',color: MyColors.Primary),),


                      ],
                    ),
                    vSizedBox,
                    Image.asset('assets/images/Line.png',color: Color(0xff333333).withOpacity(0.40),height: 10,),
                    vSizedBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal:28,vertical: 16),

                            // height: 100,width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff004747),
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/calling.png',height: 25,),hSizedBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text('CALL US',style: TextStyle(
                                        fontSize: 18,
                                      fontFamily: 'SemiBold',color: MyColors.whiteColor
                                    ),),
                                    Text('(+1) 987 654 3210',style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'regular',color: Color(0xffEBEBEB)
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        hSizedBox05,
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal:20,vertical: 16),
                            // height: 100,width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xff004747),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/@.png',height: 25,),hSizedBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('MAIL US',style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'SemiBold',color: MyColors.whiteColor
                                    ),),
                                    Text('example@gmail.com',style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'regular',color: Color(0xffEBEBEB)
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    vSizedBox,
                    Image.asset('assets/images/Line.png',color: Color(0xff333333).withOpacity(0.40),height: 10,),
                    vSizedBox2,
                    Text('Our Offers',style: TextStyle(fontSize: 18,fontFamily: 'medium',color: MyColors.blackColor),),
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
                    vSizedBox2,
                    Text('Gallery',style: TextStyle(fontSize: 18,fontFamily: 'medium',color: MyColors.blackColor),),
                    vSizedBox2,
                    StaggeredGrid.count(
                  crossAxisCount:6,
                  mainAxisSpacing:5,
                  crossAxisSpacing:4,
                  children:  [
                    StaggeredGridTile.count(
                      crossAxisCellCount:3,
                      mainAxisCellCount:2,
                      child:Image.asset('assets/images/gallery1.png', ),

              ),
                    StaggeredGridTile.count(
                      crossAxisCellCount:3,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/gallery3.png',),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/gallery2.png',),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 2,
                      child: Image.asset('assets/images/gallery4.png',),
                    ),
                  ],
                ),
                    vSizedBox2,
                    Text('Video',style: TextStyle(fontSize: 18,fontFamily: 'medium',color: MyColors.blackColor),),
                    vSizedBox,
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/images/videoscreen.png',fit: BoxFit.cover,),
                        Image.asset('assets/images/play.png',height: 62,width: 62,),


                      ],
                    ),
                    vSizedBox2,
                    Text('Get in touch with live location',style: TextStyle(fontSize: 18,fontFamily: 'medium',color: MyColors.blackColor),),
                    vSizedBox,
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('assets/images/map.png',fit: BoxFit.cover,),
                      ],
                    )






                  ],
                ),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(8.0),
        child: RoundEdgedButton(
          text: 'Rate Us',
          textColor: MyColors.whiteColor,
          color: MyColors.introscreenheadcolor,
          width: 350,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for(int i=1;i<6;i++)
                              Icon(Icons.star_rounded, color: Color(0xFEE6E6E6), size: 38,)
                          ],
                        ),
                        vSizedBox,
                        Text('Name',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'medium',
                          color: MyColors.labletextcolor,

                        ),),
                        CustomTextField1(
                          controller: code,

                        ),
                        vSizedBox,
                        Text('What’s on your mind?',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'medium',
                          color: MyColors.labletextcolor,

                        ),),
                        CustomTextField1(
                          controller: code,
                          height: 155,

                        ),
                        vSizedBox6,
                        RoundEdgedButton(
                          text: 'Submit',
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
        ),
      ),


    );
  }
}
