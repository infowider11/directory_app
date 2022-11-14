import 'package:directory_app/constants/colors.dart';
import 'package:directory_app/widgets/category.dart';
import 'package:flutter/material.dart';
class Barcafearea_Page extends StatefulWidget {
  const Barcafearea_Page({Key? key}) : super(key: key);

  @override
  State<Barcafearea_Page> createState() => _Barcafearea_PageState();
}

class _Barcafearea_PageState extends State<Barcafearea_Page> {
  List<dynamic> icon=[
    {
      'image':'assets/images/home5.png'
    },
    {
      'image':'assets/images/home6.png'
    },
    {
      'image':'assets/images/home5.png'
    },
    {
      'image':'assets/images/home6.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
              'Bars and Caffeteria',
              style: TextStyle(
                  color: MyColors.blackColor, fontFamily: 'SemiBold', fontSize: 18),
            ),
            shape: Border(bottom: BorderSide(color:Color(0xFF333333).withOpacity(0.20), width: 1)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(0),
            child: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    // crossAxisCount: sixCatList.length,
                    crossAxisCount: 2,
                    clipBehavior: Clip.none,
                    children: [
                      for (var i = 0; i <4; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BusinessBlock(
                              icon: '${icon[i]['image']}',
                              title: 'Coffee House',
                              review: false,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Image.asset('assets/images/googlemap.png'),
                // Center(
                //   child: Text
                //     ('...Data'),
                // ),
              ],
            ),
          ),
          bottomNavigationBar:Container(
            color: Color(0xff8aa5a7).withOpacity(0.1),
            child: TabBar(
              tabs: [
                Tab(child: Text('List View',style: TextStyle(
                    color: Color(0xff004747),fontSize: 14,fontFamily:'RobotoMedium'
                ),),),
                Tab(child: Text('Map View',style: TextStyle(
                    color: Color(0xff004747),fontSize: 14,fontFamily:'RobotoMedium'
                ),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
