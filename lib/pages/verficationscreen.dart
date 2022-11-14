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
  TextEditingController name = TextEditingController();
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Image.asset('${MyImages.verificationimg}', width: 190,)),
                  vSizedBox2,
                  MainHeadingText(text: 'Verification code', color: MyColors.Primary, fontSize: 26, fontFamily: 'semibold', height: 1.6,),
                  vSizedBox,
                  ParagraphText(textAlign: TextAlign.center, text: 'We have sent the verification code to\n your Email Address',fontSize:18, color: MyColors.blackColor,fontFamily: 'medium',),
                  vSizedBox4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainHeadingText(text: 'admin@gmail.com', fontSize: 18, color: MyColors.secondary, fontFamily: 'medium',),
                      hSizedBox05,
                      Image.asset('assets/images/edit.png', width: 20,)
                    ],
                  ),
                  vSizedBox6,
                  VerificationCode(
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: MyColors.blackColor),
                    keyboardType: TextInputType.number,
                    length: 4,
                    cursorColor: MyColors.blackColor,
                    fillColor: Color(0xFE8AA5A7).withOpacity(0.1),
                    margin: const EdgeInsets.all(12),
                    underlineColor: Colors.white,
                    underlineUnfocusedColor: Colors.white,
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                  vSizedBox4,

                  RoundEdgedButton(
                    text: ''
                        'Done',
                    textColor: MyColors.whiteColor,
                    color: MyColors.introscreenheadcolor,
                    width: 350,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Tab_Page()),
                      );
                    },
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
