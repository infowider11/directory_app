import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:flutter/material.dart';
class bussiness_categories extends StatelessWidget {
  final String title;
  final String icon;
  final Color? backgroundcolor;
  final  bool? bgc;

  const bussiness_categories({Key? key,
    required this.title,
    required this.icon,
    this.bgc=true,
    this.backgroundcolor=const Color(0xffEEEEEE),


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,width: 103,
      // height: 150,width: 140,
      // padding: EdgeInsets.symmetric(horizontal:25,vertical: 18),
      decoration: BoxDecoration(
        color:backgroundcolor,
        // MyColors.container1bgcolor,
        // bgc==true?MyColors.container1bgcolor:Color(0xFF3FD4BE),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          shadow,
        ],

      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color:bgc==true?MyColors.container2bgcolor.withOpacity(0.15):MyColors.whiteColor,
                  // borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.circle
                ),

                height: 48,width: 48,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(icon,height: 28,width: 28,),
                )
            ),
            vSizedBox05,
            Center(
              child: Text(title,
                style: TextStyle(
                  color:bgc==true?MyColors.blackColor:MyColors.whiteColor,
                    fontSize:10,
                    fontFamily: 'medium',
                ),),
            )
          ],
        ),
      ),
    );
  }
}

class BusinessBlock extends StatelessWidget {
  final bool? review;
  final String title;
  final String icon;
  const BusinessBlock({Key? key,
    this.review=false,
    required this.title,
    required this.icon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(

        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.whitelight,
            boxShadow: [
              shadow
            ]
        ),
        child:Column(
          children: [

            ClipRRect(
              // borderRadius:BorderRadius.circular(20) ,
                borderRadius:BorderRadius.only(
                  bottomLeft:Radius.circular(0),
                  topLeft:Radius.circular(20),
                  topRight: Radius.circular(20),
                ) ,
                child: Image.asset(icon,fit: BoxFit.cover,width: 160,height: 100,)),
            vSizedBox,
            Container(
              padding: EdgeInsets.only(bottom:8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:12,right: 15,top: 0,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                          style: TextStyle(fontSize: 14,fontFamily: 'medium',color: MyColors.blackColor),),
                        // Image.asset('assets/images/home7.png',height: 15,width: 16,)
                        Icon(Icons.favorite_outlined,color: MyColors.redColor,size:15,),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:12,right: 12,top: 0,bottom: 5),
                    child: Text('Grey Street, new york...',style: TextStyle(fontSize: 12,fontFamily: 'medium',
                      color: MyColors.secondary,),),
                  ),
                  if(review==true)
                    Padding(
                      padding: const EdgeInsets.only(left:12,right: 12,bottom:5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/home8.png',width: 12,height: 14,),
                              hSizedBox05,
                              Text('4.5',style: TextStyle(fontSize: 13,fontFamily: 'medium'),),

                            ],
                          ),
                          hSizedBox2,
                          Container(
                            padding: EdgeInsets.only(left:15,right:15,top:6,bottom:6),
                            // height: 22,width: 49,
                            decoration: BoxDecoration(
                                color: MyColors.secondary,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:
                            Center(child: Text('Cafe',style: TextStyle(fontFamily: 'medium',fontSize: 10,color:MyColors.whiteColor),)),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),

          ],
        )

    ),
        Positioned(
          right: 10,
          top: 5,
          child: Container(
            height:25,width: 26,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/off.png'))),
            child: Center(
                child: Text('10%',style: TextStyle(color: MyColors.whiteColor,fontFamily: 'bold',fontSize:12),)),

          ),
        ),


      ],
    );

  }
}

