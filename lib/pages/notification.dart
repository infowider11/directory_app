import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:flutter/material.dart';
class Notification_page extends StatefulWidget {
  const Notification_page({Key? key}) : super(key: key);

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
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
      body: 
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/profile.png',height: 50,width: 50,),
                        hSizedBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Reservation #01 is Confirmed.',
                              style: TextStyle(
                                  fontFamily: 'Robotobolod',
                                  fontSize: 16,
                                  color: Color(0xFF1A1C1E)
                              ),

                            ),
                            Text('lorem ipsum dolor sit amet',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontFamily: 'Robotoregular',
                                  height: 1.3,
                                  color: Color(0xFF545454).withOpacity(0.4)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 37,
                      child: Text('10 min',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Robotoregular',

                        ),
                      ),
                    )
                  ],
                ),

              ),
              vSizedBox,
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/profile.png',height: 50,width: 50,),
                        hSizedBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Reservation #01 is Confirmed.',
                              style: TextStyle(
                                  fontFamily: 'Robotobolod',
                                  fontSize: 16,
                                  color: Color(0xFF1A1C1E)
                              ),

                            ),
                            Text('lorem ipsum dolor sit amet',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontFamily: 'Robotoregular',
                                  height: 1.3,
                                  color: Color(0xFF545454).withOpacity(0.4)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 37,
                      child: Text('10 min',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Robotoregular',

                        ),
                      ),
                    )
                  ],
                ),

              ),
              vSizedBox,
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/profile.png',height: 50,width: 50,),
                        hSizedBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Reservation #01 is Confirmed.',
                              style: TextStyle(
                                  fontFamily: 'Robotobolod',
                                  fontSize: 16,
                                  color: Color(0xFF1A1C1E)
                              ),

                            ),
                            Text('lorem ipsum dolor sit amet',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontFamily: 'Robotoregular',
                                  height: 1.3,
                                  color: Color(0xFF545454).withOpacity(0.4)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 37,
                      child: Text('10 min',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Robotoregular',

                        ),
                      ),
                    )
                  ],
                ),

              ),
              vSizedBox,

            ],
          ),
        ),
      ),
    );
  }
}
