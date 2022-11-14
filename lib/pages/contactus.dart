import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/changepassword.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';

import 'editprofile.dart';
class Contact_us extends StatefulWidget {
  const Contact_us({Key? key}) : super(key: key);

  @override
  State<Contact_us> createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {

  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
        child: RoundEdgedButton(
          text: ' Send',
          textColor: MyColors.whiteColor,
          color: MyColors.introscreenheadcolor,
          width: 350,
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Edit_profile()),
            );
          },
        ),
      ),
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
          'Contact us',
          style: TextStyle(
              color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
        ),
        shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name',style: TextStyle(
                fontSize: 18,
                fontFamily: 'medium',
                color: MyColors.labletextcolor,
              ),),
              CustomTextField1(
                controller: code,

              ),
              vSizedBox2,
              Text('Email',style: TextStyle(
                fontSize: 18,
                fontFamily: 'medium',
                color: MyColors.labletextcolor,
              ),),
              CustomTextField1(
                controller: code,

              ),
              vSizedBox2,
              Text('Phone',style: TextStyle(
                fontSize: 18,
                fontFamily: 'medium',
                color: MyColors.labletextcolor,
              ),),
              CustomTextField1(
                controller: code,

              ),
              vSizedBox2,
              Text('Enter Message',style: TextStyle(
                fontSize: 18,
                fontFamily: 'medium',
                color: MyColors.labletextcolor,

              ),),
              CustomTextField1(
                controller: code,
                height: 155,

              ),






            ],
          ),
        ),
      ),
    );
  }
}
