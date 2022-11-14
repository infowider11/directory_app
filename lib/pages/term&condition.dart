import 'package:directory_app/constants/CustomText.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:flutter/material.dart';
class Term_Page extends StatefulWidget {
  const Term_Page({Key? key}) : super(key: key);

  @override
  State<Term_Page> createState() => _Term_PageState();
}

class _Term_PageState extends State<Term_Page> {
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
          'Terms and Condition',
          style: TextStyle(
              color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
        ),
        shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body:
      Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Terms and Conditions',style: TextStyle(
              fontFamily: 'medium',fontSize: 20,
            ),),
            vSizedBox,
            ParagraphText(
              text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum is simply dummy text of the printing and',
              fontSize: 14,
              fontFamily: 'medium',
              color: Color(0xff898989),
              lineheight:1.7,
            ),
            vSizedBox,
            ParagraphText(
              text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of '
                  'the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and'
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is '
                  'simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and '
                  'typesetting industry. Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is '
                  'simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text '
                  'of the printing andLorem Ipsum is simply dummy text of the printing and typesetting industry.'
                  'Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the '
                  'printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and Lorem '
                  'Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply '
                  'dummy text of the printing andLorem Ipsum is simply dummy text of the printing and '
                  'typesetting industry. Lorem Ipsum is simply dummy text of the printing and',
              fontSize: 14,
              fontFamily: 'medium',
              color: Color(0xff898989),
              lineheight:1.7,
            )

          ],
        ),
      ),
    );
  }
}
