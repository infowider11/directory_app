import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/changepassword.dart';
import 'package:directory_app/pages/tab.dart';
import 'package:directory_app/pages/welcome.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
class Verification_page extends StatefulWidget {
  const Verification_page({Key? key}) : super(key: key);

  @override
  State<Verification_page> createState() => _Verification_pageState();
}

class _Verification_pageState extends State<Verification_page> {
  TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child:  Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100,bottom: 50,left: 50,right: 50),
                    child: Image.asset('${MyImages.verificationimg}')),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: MainHeadingText(text: 'Verification code',
                          color: MyColors.blackColor,
                          textAlign: TextAlign.center,
                          fontSize: 25,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'SemiBold',
                          // height: 3.9,
                        ),
                      ),
                      vSizedBox,
                      Container(
                        padding: EdgeInsets.symmetric(horizontal:50,vertical: 0),
                        child: ParagraphText(
                          text: ("We have sent the verification code to your mobile number"),
                          color: MyColors.subheadcolor,
                          textAlign: TextAlign.center,
                          fontSize: 16,
                          fontFamily: 'medium',
                        ),
                      ),
                      vSizedBox4,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('+91 55464564',style: TextStyle(fontSize: 18),)
                        ],
                      ),
                      vSizedBox4,

                    ],
                  ),
                ),

                // vSizedBox6,



                VerificationCode(
                  fullBorder: true,
                  textStyle: TextStyle(fontSize: 20.0, color: MyColors.blackColor,),
                  keyboardType: TextInputType.number,
                  underlineColor:MyColors.textborder, // If this is null it will use primaryColor: Colors.red from Theme
                  length: 4,
                  cursorColor: Colors.blue, // If this is null it will default to the ambient
                  // clearAll is NOT required, you can delete it
                  // takes any widget, so you can implement your design
                  clearAll: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'clear all',
                      style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
                    ),
                  ),
                  onCompleted: (String value) {
                    setState(() {
                      // _code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      // _onEditing = value;
                    });
                    // if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),

                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                //   decoration: BoxDecoration(
                //     color: Colors.white70,
                //     borderRadius: BorderRadius.circular(15),
                //     boxShadow: [
                //       boxShadow,
                //     ],
                //     border: Border.all(color: MyColors.textborder, width: 1),
                //   ),
                //   height: 50,
                //   width: 50,
                //   child: null,
                // ),

                RoundEdgedButton(
                  text: 'Done',
                  textColor: MyColors.whiteColor,
                  color: MyColors.introscreenheadcolor,
                  width: 350,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Change_Password()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
