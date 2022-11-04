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
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // padding: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vSizedBox8,
                      vSizedBox2,

                      MainHeadingText(text: 'Sign up ',
                        color: MyColors.Primary,
                        // textAlign: TextAlign.center,
                        fontSize: 27,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'bold',
                        height: 3.9,
                      ),

                      Text('Create your account here',style: TextStyle(fontSize: 13,
                          fontFamily: 'regular',color: MyColors.subheadcolor,fontWeight: FontWeight.w400
                      ),),
                      vSizedBox4,
                      Text('Username',style: TextStyle(fontSize: 16,
                          fontFamily: 'regular',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                      ),),
                      CustomTextField1(
                        controller: code,

                      ),
                      vSizedBox,
                      Text('Phone number',style: TextStyle(fontSize: 16,
                          fontFamily: 'regular',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                      ),),
                      CustomTextField1(
                        controller: code,

                      ),
                      vSizedBox2,
                      Text('Password',style: TextStyle(fontSize: 16,
                          fontFamily: 'regular',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                      ),),
                      CustomTextField1(
                        controller: code,

                      ),
                      vSizedBox,
                      Text('Confirm Password',style: TextStyle(fontSize: 16,
                          fontFamily: 'regular',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
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
                      // vSizedBox6,
                      // Center(
                      //   child: Text('Or Sign in with social media',
                      //
                      //     style: TextStyle(fontSize: 13,
                      //       fontFamily: 'regular',color: MyColors.subheadcolor,fontWeight: FontWeight.w300,
                      //     ),),
                      // ),
                      // vSizedBox2,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Image.asset('${MyImages.Vector}',
                      //       fit:BoxFit.cover,
                      //       height: 28,
                      //       width: 28,
                      //     ),
                      //     hSizedBox2,
                      //     Image.asset('${MyImages.Google}',
                      //         height: 28,
                      //         width: 28,
                      //         fit:BoxFit.cover
                      //     )
                      //   ],
                      // ),
                      // vSizedBox2,
                      // Center(
                      //   child: RichText(
                      //     text: TextSpan(
                      //       style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w300),
                      //       children: <TextSpan>[
                      //         TextSpan(text: 'If you don’t have an Account? ', style: TextStyle(color: MyColors.loginoptiontext)),
                      //         TextSpan(text: 'Sign up'),
                      //
                      //       ],
                      //     ),
                      //     textScaleFactor: 0.5,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top:-25,
                  left: -16,
                  child: Image.asset('${MyImages.Ellipse}',
                    height: 200, width: 300,)
              )

            ],
          ),
        )
    );
  }
}
