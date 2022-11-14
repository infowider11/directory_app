import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:flutter/material.dart';
// import 'package:winao_client_app/constants/colors.dart';
//
// import 'CustomTexts.dart';

class CustomTextField extends StatelessWidget {
  final bool? enabled;
  final TextEditingController controller;
  final String hintText;
  final BoxBorder? border;
  final bool horizontalPadding;
  final bool obscureText;
  final int? maxLines;
  final Color bgColor;
  final double verticalPadding;
  final String? prefixIcon;
  final TextAlign textAlign;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.border,
    this.maxLines,
    this.horizontalPadding = false,
    // this.verticalPadding = false,
    this.obscureText = false,
    this.bgColor = MyColors.whiteColor,
    this.verticalPadding = 4,
    this.prefixIcon,
    this.textAlign = TextAlign.left,
    this.enabled
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      // width: MediaQuery.of(context),
      margin: EdgeInsets.symmetric(
          horizontal: horizontalPadding ? 16 : 0, vertical: verticalPadding),
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: MyColors.primaryColor),
          // border: Border,
          borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        enabled: enabled,
        maxLines: maxLines ?? 1,
        controller: controller,
        obscureText: obscureText,
        textAlign: textAlign,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16),
          border: InputBorder.none,
          prefixIcon:prefixIcon==null?null:
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              prefixIcon!,
              width: 10,
              height: 10,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField1 extends StatelessWidget {
  final bool? enabled;
  final TextEditingController controller;
  final String? hintText;
  final BoxBorder? border;
  final bool horizontalPadding;
  final bool obscureText;
  final int? maxLines;
  final Color bgColor;
  final double verticalPadding;
  final String? prefixIcon;
  final String? suffixIcon;
  final TextAlign textAlign;
  final double height;
  final double hinttextfontsize;
  final String? hinttextfontfamily;

  CustomTextField1({
    Key? key,
    required this.controller,
     this.hintText,
    this.border,
    this.maxLines,
    this.horizontalPadding = false,
    // this.verticalPadding = false,
    this.obscureText = false,
    this.bgColor = MyColors.whiteColor,
    this.verticalPadding = 4,
    this.prefixIcon,
    this.suffixIcon,
    this.hinttextfontsize=16,
    this.hinttextfontfamily,

    this.textAlign = TextAlign.left,
    this.enabled,
    this.height=50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,

      margin: EdgeInsets.symmetric(
          horizontal: horizontalPadding ? 16 : 0, vertical: verticalPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          boxShadow,
        ],
        border:
        // Border.all(color: MyColors.primaryColor, width: 2)
        Border.all(color: MyColors.textborder, width: 1),
      ),
      padding: EdgeInsets.only(left: 10),


      child: TextField(
        enabled: enabled,
        maxLines: maxLines ?? 1,
        controller: controller,
        obscureText: obscureText,
        textAlign: textAlign,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:const EdgeInsets.only(top:15),
          hintStyle: TextStyle(fontSize: hinttextfontsize,fontFamily: hinttextfontfamily),
          border: InputBorder.none,
          prefixIcon:prefixIcon==null?null:
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(
              prefixIcon!,
              width: 10,
              height: 10,
              fit: BoxFit.fitHeight,
            ),
          ),
          suffixIcon:suffixIcon==null?null:
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              suffixIcon!,
              width: 10,
              height: 10,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldapply extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final BoxBorder? border;
  final bool horizontalPadding;
  final bool obscureText;
  final int? maxLines;
  final Color bgColor;
  final double verticalPadding;
  final String? prefixIcon;
  final TextAlign textAlign;
  CustomTextFieldapply({
    Key? key,
    required this.controller,
    required this.hintText,
    this.border,
    this.maxLines,
    this.horizontalPadding = false,
    // this.verticalPadding = false,
    this.obscureText = false,
    this.bgColor = MyColors.whiteColor,
    this.verticalPadding = 4,
    this.prefixIcon,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: horizontalPadding ? 16 : 0, vertical: verticalPadding),
        decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: MyColors.primaryColor),
            // border: Border,
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: TextField(

                maxLines: maxLines ?? 1,
                controller: controller,
                obscureText: obscureText,
                textAlign: textAlign,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 16),
                  border: InputBorder.none,
                  prefixIcon:prefixIcon==null?null:
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      prefixIcon!,
                      width: 10,
                      height: 10,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(onPressed: (){},
                child: Text('apply',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15
                  ),
                )
            )
          ],
        )


    );
  }
}

class CustomTextFields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final BoxBorder? border;
  final bool horizontalPadding;
  final bool obscureText;
  final int? maxLines;
  final Color bgColor;
  final double verticalPadding;
  final String? prefixIcon;
  const CustomTextFields({
    Key? key,
    required this.controller,
    required this.hintText,
    this.border,
    this.maxLines,
    this.horizontalPadding = false,
    this.obscureText = false,
    this.bgColor = MyColors.whiteColor,
    this.verticalPadding = 8,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: horizontalPadding ? 16 : 0, vertical: verticalPadding),
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: MyColors.primaryColor),
          // border: Border,
          borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        maxLines: maxLines ?? 1,
        controller: controller,
        obscureText: obscureText,
        // textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 13),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset(
              'assets/images/user.png',
              width: 10,
              height: 10,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldEditProfile extends StatelessWidget {
  final TextEditingController controller;
  final String headingText;
  final String hintText;
  const CustomTextFieldEditProfile({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.headingText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubHeadingText(text: headingText),
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText,
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                )
            ),
          )
        ],
      ),
    );
  }
}
