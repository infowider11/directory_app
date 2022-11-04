import 'package:directory_app/constants/image_urls.dart';
import 'package:directory_app/pages/introscreen.dart';
import 'package:flutter/material.dart';
class splashscreec extends StatefulWidget {
  const splashscreec({Key? key}) : super(key: key);

  @override
  State<splashscreec> createState() => _splashscreecState();
}


class _splashscreecState extends State<splashscreec> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds:5)).then((value)  {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const IntroPage()),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF3FD4BE),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Image.asset(
            MyImages.download,
            height: 150,
            // width: MediaQuery.of(context).size.width-100,
            fit: BoxFit.contain,
          ),
        ),

      ),
    );
  }
}
