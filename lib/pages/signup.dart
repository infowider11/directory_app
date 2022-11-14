import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/verficationscreen.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    return Scaffold(
        extendBodyBehindAppBar: true,
        // extendBody: true,
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        ),
        body: SingleChildScrollView(
          child: Container(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // padding: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vSizedBox8,
                  // vSizedBox6,

                  MainHeadingText(text: 'Sign up ',
                    color: MyColors.Primary,
                    fontSize: 26,
                    fontFamily: 'medium',

                  ),

                  Text('Create your account here',style:
                  TextStyle(
                    fontSize: 18,
                    fontFamily: 'regular',
                    color: MyColors.subheadcolor,

                  ),),
                  vSizedBox6,
                  Text('Username',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium',
                    color: MyColors.labletextcolor,
                  ),),
                  CustomTextField1(
                    controller: code,

                  ),
                  vSizedBox2,
                  Text('Phone number',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium',
                    color: MyColors.labletextcolor,
                  ),),
                  CustomTextField1(
                    controller: code,

                  ),
                  vSizedBox2,
                  Text('Password',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium',
                    color: MyColors.labletextcolor,
                  ),),
                  CustomTextField1(
                    controller: code,

                  ),
                  vSizedBox2,
                  Text('Confirm Password',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium',
                    color: MyColors.labletextcolor,
                  ),),
                  CustomTextField1(
                    controller: code,

                  ),
                  vSizedBox2,
                  RoundEdgedButton(
                    text: 'Sign up',
                    textColor: MyColors.whiteColor,
                    color: MyColors.introscreenheadcolor,
                    width: 350,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Verification_page()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
