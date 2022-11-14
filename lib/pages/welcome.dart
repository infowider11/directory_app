import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/sign_in.dart';
import 'package:directory_app/pages/signup.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Image.asset('${MyImages.welcomeScreen3}',
             // width: 300,
             height: 550,
             fit:BoxFit.contain
         ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: MainHeadingText(text: 'Welcome!',
              color: MyColors.Primary,
              textAlign: TextAlign.center,
              fontSize: 27,
              // fontWeight: FontWeight.bold,
              fontFamily: 'bold',
              height: 3.9,
            ),
          ),
          ParagraphText(
            text: ("Find Your Nearby Store"),
            color: MyColors.secondary,
            textAlign: TextAlign.center,
            fontSize: 19,
            fontFamily: 'regular',
            fontWeight: FontWeight.w500,

          ),
          vSizedBox4,

          RoundEdgedButton(
            verticalMargin: 10,
            text: 'Get Started',
            textColor: MyColors.blackColor,
            color: MyColors.secondary,
            width: 350,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sign_In()),
              );
            },
          ),
          RoundEdgedButton(
            text: 'Create Account',
            textColor: MyColors.whiteColor,
            color: MyColors.introscreenheadcolor,
            width: 350,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sign_Up()),
              );
            },
          ),



        
        ],
      )
    );
  }
}

