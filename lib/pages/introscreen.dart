import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/pages/welcome.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/size_box.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  page0(){

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 150,bottom: 50,right: 50,left: 50),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImages.welcomeScreen1),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter
                )
            ),
            // height: MediaQuery.of(context).size.height/**/,
          ),
        ),
        Positioned(
          bottom: 200,
          left: 16,
          right: 16,
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MainHeadingText(text: ' Regístrate Gratis',
                    color: MyColors.Primary,
                    textAlign: TextAlign.center,
                    fontSize: 26,
                    fontFamily: 'ExtraBold',

                  ),
                ),
                vSizedBox2,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50,),
                  child: ParagraphText(
                    text: ("Regístrate para poder acceder a innumerables ofertas y descuentos procedentes de una selección de establecimientos cercanos."),
                    textAlign: TextAlign.center,
                    color: MyColors.secondary,
                    fontSize: 16,
                    fontFamily: 'regular',


                  ),
                ),
                vSizedBox4,

              ],
            ),
          ),
        )
      ],
    );
  }
  page1(){

    return Stack(

      children: [
        Padding(
          padding: EdgeInsets.only(top: 150,bottom: 50,right: 50,left: 50),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImages.welcomeScreen2),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter

                )
            ),
            // height: MediaQuery.of(context).size.height/**/,
          ),
        ),
        Positioned(
          bottom: 200,
          left: 16,
          right: 16,
          child: Container(
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MainHeadingText(text: 'Busca Y Encuentra Ofertas ',
                    color: MyColors.Primary,
                    textAlign: TextAlign.center,
                    fontSize: 26,
                    fontFamily: 'ExtraBold',


                  ),
                ),
                vSizedBox2,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ParagraphText(
                    text: ("Selecciona las ofertas que te interesen, por tipo de negocio o por zona, de entre todos los establecimientos asociados."),
                    textAlign: TextAlign.center,
                    color: MyColors.secondary,
                    fontSize: 16,
                    fontFamily: 'regular',
                    lineheight:1.3,


                  ),
                ),
                vSizedBox4,

              ],
            ),
          ),
        )
      ],
    );
  }
  page2(){
    return Stack(

      children: [
        Padding(
          padding: EdgeInsets.only(top: 150,bottom: 50,right: 50,left: 50),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImages.welcomeScreen0),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter

                )
            ),
            // height: MediaQuery.of(context).size.height/**/,
          ),
        ),
        Positioned(
          bottom: 200,
          left: 16,
          right: 16,
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MainHeadingText(text: 'Usa los cupones',
                    color: MyColors.Primary,
                    textAlign: TextAlign.center,
                    fontSize: 26,
                    fontFamily: 'ExtraBold',

                  ),
                ),
                vSizedBox2,
                Container(
                  padding: EdgeInsets.symmetric(horizontal:25),
                  child: ParagraphText(
                    text: (" Usa los cupones asociados a las ofertas y obtén numerosos descuentos especiales. "),
                    color: MyColors.secondary,
                    textAlign: TextAlign.center,
                    fontSize: 16,
                    fontFamily: 'regular',


                  ),
                ),
                vSizedBox4,

              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Container(
          child:
          Stack(
            alignment: Alignment.center,
            children: [

              PageView.builder(
                itemCount: 3,
                controller: controller,
                itemBuilder: (context, index){
                  switch(index){
                    case 0: return page0();
                    case 1: return page1();
                    case 2: return page2();
                    default: return page0();
                  }
                },
              ),
              // Positioned(
              //   top:100,
              //     child: Image.asset('${MyImages.applogo}')),
              Positioned(
                bottom: 80,
                // alignment: Alignment.center,
                child: SmoothPageIndicator(
                    controller: controller,  // PageController
                    count: 3,
                    effect:  WormEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotColor: MyColors.Primary,
                        dotColor: Color(0xff3FD4BE),
                        paintStyle:PaintingStyle.stroke ,
                      radius: 20
                    ),  // your preferred effect
                    onDotClicked: (index){

                    }
                ) ,
              ),
              Positioned(
                bottom: 20,
                child: RoundEdgedButton(
                  text: 'Skip',
                  textColor: MyColors.whiteColor,
                  color: MyColors.introscreenheadcolor,
                  width: 350,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );
                  },
                ),
              )
              // Positioned(
              //   bottom: 20,
              //   right: 32,
              //   child: GestureDetector(
              //     onTap: (){
              //       // Navigator.pushNamed(context, LoginPage.id);
              //     },
              //     child: Container(
              //       decoration: BoxDecoration(
              //           color: MyColors.primaryColor,
              //           borderRadius: BorderRadius.circular(12)
              //       ),
              //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              //       child: Icon(Icons.arrow_forward, color: Colors.white,),
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
