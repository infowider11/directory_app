import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/pages/contactus.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class Change_Password extends StatefulWidget {

  const Change_Password({Key? key}) : super(key: key);

  @override
  State<Change_Password> createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
        child: RoundEdgedButton(
          text: 'Update',
          textColor: MyColors.whiteColor,
          color: MyColors.introscreenheadcolor,
          width: 350,
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Contact_us()),
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
          'Change Password',
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
          padding: EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox,
              Text('Old Password',style: TextStyle(
                fontSize: 18,
                fontFamily: 'medium',
                color: MyColors.labletextcolor,
              ),),
              CustomTextField1(
                controller: code,

              ),
              vSizedBox2,
              Text('New Password',style: TextStyle(
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





            ],
          ),
        ),
      ),
    );
  }
}
