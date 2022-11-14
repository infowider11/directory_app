import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:directory_app/widgets/customtextfield.dart';
import 'package:directory_app/widgets/round_edged_button.dart';
import 'package:flutter/material.dart';
class Edit_profile extends StatefulWidget {
  const Edit_profile({Key? key}) : super(key: key);

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Change_Password()),
            // );
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // bottom:,
        centerTitle: true,
        title: Text('My Profile',textAlign:TextAlign.center,
          style: TextStyle(
            fontFamily: 'SemiBold',
            color: Colors.black,


          ),),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('${MyImages.profile}'),
                          fit: BoxFit.fill
                      ),
                    ),
                    child: Image.asset
                      ('${MyImages.profile}'),
                  ),
                ),
                vSizedBox05,
                Center(
                  child: Text('Edit Image',style: TextStyle(
                    fontFamily: '',
                    fontSize: 14,

                  ),),
                ),
                Text('First Name',style: TextStyle(fontSize: 16,
                    fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                ),),
                CustomTextField1(
                  controller: code,

                ),
                vSizedBox2,
                Text('Last Name',style: TextStyle(fontSize: 16,
                    fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                ),),
                CustomTextField1(
                  controller: code,

                ),
                vSizedBox2,
                Text('Email',style: TextStyle(fontSize: 16,
                    fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                ),),
                CustomTextField1(
                  controller: code,

                ),
                vSizedBox2,
                Text('Phone',style: TextStyle(fontSize: 16,
                    fontFamily: 'SemiBold',color: MyColors.labletextcolor,fontWeight: FontWeight.w600
                ),),
                CustomTextField1(
                  controller: code,
                  height: 155,

                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
