import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/barcafearea.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class Bussiness_Categories extends StatefulWidget {
  const Bussiness_Categories({Key? key}) : super(key: key);

  @override
  State<Bussiness_Categories> createState() => _Bussiness_CategoriesState();
}


class _Bussiness_CategoriesState extends State<Bussiness_Categories> {
  List<dynamic> images=[
    {
      'title':'Bars and Caffetaria',
      'image':'assets/images/cate1.png',
      'bgc':'true',
    },{
      'title':'Technologies',
      'image':'assets/images/cate1.png',
      'bgc':'false',
    },{
      'title':'Sports and Fitness',
      'image':'assets/images/cate1.png',
      'bgc':'true',
    }
  ];
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
          'Bussiness Categories',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Please select any 5 categories',style: TextStyle(
              fontSize:18 ,
                fontFamily: 'medium'
            ),),
            vSizedBox2,
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Barcafearea_Page()),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bussiness_categories(
                      title: 'Bars and\nCaffetaria',
                      icon: 'assets/images/cate1.png',
                      bgc:true,
                    ),
                    bussiness_categories(
                      title: 'Technologies',
                      icon: 'assets/images/techicon.png',
                      bgc:false,
                      backgroundcolor:Color(0xFF3FD4BE),
                    ),bussiness_categories(
                      title: 'Sports and\nFitness',
                      icon: 'assets/images/sporticon.png',
                      bgc:true,
                    )
                  ],
                ),
            ),
            vSizedBox2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bussiness_categories(
                  title: 'Home and\nDecoration',
                  icon: 'assets/images/homedecoricon.png',
                  bgc:false,
                  backgroundcolor:Color(0xFF3FD4BE),
                ),
                bussiness_categories(
                  title: 'Health and\nBeauty',
                  icon: 'assets/images/healthicon.png',
                  bgc:false,
                  backgroundcolor:Color(0xFF3FD4BE),
                ),bussiness_categories(
                  title: 'Family and \nKids',
                  icon: 'assets/images/familyicon.png',
                  bgc:true,
                )
              ],
            ),
            vSizedBox2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bussiness_categories(
                  title: 'leisure and\nEntertainments',
                  icon: 'assets/images/homedecoricon.png',
                  bgc:true,
                ),
                bussiness_categories(
                  title: 'Restaurents',
                  icon: 'assets/images/healthicon.png',
                  bgc:false,
                  backgroundcolor:Color(0xFF3FD4BE),
                ),bussiness_categories(
                  title: 'Promotion',
                  icon: 'assets/images/familyicon.png',
                  bgc:false,
                  backgroundcolor:Color(0xFF3FD4BE),
                )
              ],
            ),



          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RoundEdgedButton(
          text: 'All Set!',
          textColor: MyColors.whiteColor,
          color: MyColors.introscreenheadcolor,
          width: 350,
          onTap: (){
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Sign_Up()),
            // );
          },
        ),
      ),
    );
  }
}
