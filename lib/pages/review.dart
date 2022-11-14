import 'package:directory_app/constants/boxshadow.dart';
import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/constants/size_box.dart';
import 'package:flutter/material.dart';

class Review_page extends StatefulWidget {
  const Review_page({Key? key}) : super(key: key);

  @override
  State<Review_page> createState() => _Review_pageState();
}

class _Review_pageState extends State<Review_page> {
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
          'Reviews',
          style: TextStyle(
              color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
        ),
        shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    boxShadow: [
                      boxShadow,
                      // shadow,
                      // boxShadowtop
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/review1.png',
                                  height: 40,
                                  width: 40,
                                )),
                            hSizedBox,
                            Text(
                              'John Snow',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'medium',
                                  color: MyColors.Primary),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                    vSizedBox,
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                      'incididunt ut labore et dolore magna aliqua.'
                      ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 14,
                          color: Color(0xFF575757).withOpacity(0.7),
                          height: 1.8),
                    )
                  ],
                ),
              ),
              vSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    boxShadow: [
                      boxShadow,
                      // shadow,
                      // boxShadowtop
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/review1.png',
                                  height: 40,
                                  width: 40,
                                )),
                            hSizedBox,
                            Text(
                              'John Snow',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'medium',
                                  color: MyColors.Primary),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                          ],
                        )
                      ],
                    ),
                    vSizedBox,
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                      'incididunt ut labore et dolore magna aliqua.'
                      ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 14,
                          color: Color(0xFF575757).withOpacity(0.7),
                          height: 1.8),
                    )
                  ],
                ),
              ),
              vSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    boxShadow: [
                      boxShadow,
                      // shadow,
                      // boxShadowtop
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/review1.png',
                                  height: 40,
                                  width: 40,
                                )),
                            hSizedBox,
                            Text(
                              'John Snow',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'medium',
                                  color: MyColors.Primary),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                          ],
                        )
                      ],
                    ),
                    vSizedBox,
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                      'incididunt ut labore et dolore magna aliqua.'
                      ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 14,
                          color: Color(0xFF575757).withOpacity(0.7),
                          height: 1.8),
                    )
                  ],
                ),
              ),
              vSizedBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF8AA5A7).withOpacity(0.10),
                    boxShadow: [
                      boxShadow,
                      // shadow,
                      // boxShadowtop
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/review1.png',
                                  height: 40,
                                  width: 40,
                                )),
                            hSizedBox,
                            Text(
                              'John Snow',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'medium',
                                  color: MyColors.Primary),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                            hSizedBox05,
                            Image.asset(
                              'assets/images/home8.png',
                              height: 14,
                              width: 14,
                              color: Color(0xFF3FD4BE),
                            ),
                          ],
                        )
                      ],
                    ),
                    vSizedBox,
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                      'incididunt ut labore et dolore magna aliqua.'
                      ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut',
                      style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 14,
                          color: Color(0xFF575757).withOpacity(0.7),
                          height: 1.8),
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
