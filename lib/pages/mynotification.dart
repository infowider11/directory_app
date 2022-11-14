import 'package:directory_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mynotification_page extends StatefulWidget {
  const Mynotification_page({Key? key}) : super(key: key);

  @override
  State<Mynotification_page> createState() => _Mynotification_pageState();
}

class _Mynotification_pageState extends State<Mynotification_page> {
  bool forIos=true;
  bool forIos1=true;
  bool forIos2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          'My Notification',
          style: TextStyle(
              color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
        ),
        shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification 1',style: TextStyle(
                  fontSize: 16,fontFamily: 'medium',color: Color(0xff575757),
                ),),
                CupertinoSwitch(
                  // overrides the default green color of the track
                  activeColor: Color(0xff00A2EA),
                  // color of the round icon, which moves from right to left
                  thumbColor: Colors.white,
                  // when the switch is off
                  trackColor: Color(0xff00A2EA),
                  // boolean variable value

                  value: forIos,
                  // changes the state of the switch
                  onChanged: (value) => setState(() => forIos = value),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification 2',style: TextStyle(
                  fontSize: 16,fontFamily: 'medium',color: Color(0xff575757),
                ),),
                CupertinoSwitch(
                  // overrides the default green color of the track
                  activeColor: Color(0xff00A2EA),
                  // color of the round icon, which moves from right to left
                  thumbColor: Colors.white,
                  // when the switch is off
                  trackColor: Color(0xff00A2EA),
                  // boolean variable value

                  value: forIos1,
                  // changes the state of the switch
                  onChanged: (value) => setState(() => forIos1 = value),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification 3',style: TextStyle(
                  fontSize: 16,fontFamily: 'medium',color: Color(0xff575757),
                ),),
                CupertinoSwitch(
                  // overrides the default green color of the track
                  activeColor: Color(0xff00A2EA),
                  // color of the round icon, which moves from right to left
                  thumbColor: Colors.white,
                  // when the switch is off
                  trackColor: Color(0xff00A2EA),
                  // boolean variable value

                  value: forIos2,
                  // changes the state of the switch
                  onChanged: (value) => setState(() => forIos2 = value),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
