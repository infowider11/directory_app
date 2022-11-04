import 'package:directory_app/constants/colors.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text('Change Password',textAlign:TextAlign.center,
          style: TextStyle(
          fontFamily: 'SemiBold',
            color: Colors.black,


          ),),
        ),
      ),
      body: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Old Password',style: TextStyle(fontSize: 16,
                  fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
              ),),
              CustomTextField1(
                controller: code,

              ),
              Text('New Password',style: TextStyle(fontSize: 16,
                  fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
              ),),
              CustomTextField1(
                controller: code,

              ),
              Text('Confirm Password',style: TextStyle(fontSize: 16,
                  fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
              ),),
              CustomTextField1(
                controller: code,

              ),

              RoundEdgedButton(
                text: 'Update',
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
    );
  }
}
