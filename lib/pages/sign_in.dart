import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/signup.dart';
import 'package:directory_app/pages/tab.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        child: Stack(
          children: [
            Container(

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
                    MainHeadingText(text: 'Login Account',
                      color: MyColors.Primary,
                      fontSize: 26,
                      fontFamily: 'medium',
                    ),
                    Text('Hello welcome back to our account',style: TextStyle(
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
                    Text('Password',style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'medium',
                        color: MyColors.labletextcolor,

                    ),),
                    CustomTextField1(
                      controller: code,

                    ),
                    vSizedBox2,
                    RoundEdgedButton(
                      text: 'Login',
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
                    vSizedBox6,
                    Center(
                      child: Text('Or Sign in with social media',

                        style: TextStyle(fontSize: 18,
                          fontFamily: 'Light',color: MyColors.subheadcolor,
                        ),),
                    ),
                    vSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('${MyImages.Vector}',
                          fit:BoxFit.cover,
                          height: 28,
                          width: 28,
                        ),
                        hSizedBox2,
                        Image.asset('${MyImages.Google}',
                            height: 28,
                            width: 28,
                            fit:BoxFit.cover
                        )
                      ],
                    ),
                    vSizedBox2,
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Sign_Up()),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('If you don’t have an Account?',style:TextStyle(
                              color: MyColors.subheadcolor,
                              fontSize: 18,
                              fontFamily: 'Light') ,),
                          hSizedBox05,
                          Text('Sign up',style:TextStyle(color: MyColors.Primary,
                              fontSize: 18,
                              fontFamily: 'regular',
                              decoration: TextDecoration.underline
                          ) ,)

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top:-25,
            //     left: -16,
            //     child: Image.asset('${MyImages.Ellipse}',
            //       height: 200, width: 300,)
            // )

          ],
        ),
      )
    );
  }
}



