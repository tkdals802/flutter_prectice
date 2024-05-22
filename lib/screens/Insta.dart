import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

import 'custom_widget.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  final List<int> entires = <int>[];


  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: DecoratedIcon(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.transparent,
                      ),
                      decoration: IconDecoration(
                        border: IconBorder(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: DecoratedIcon(
                      icon: Icon(
                        IconData(0xf733,
                            fontFamily: 'CupertinoIcons',
                            fontPackage: 'cupertino_icons'),//종이비행기 icon
                        color: Colors.transparent,
                      ),
                      decoration: IconDecoration(
                        border: IconBorder(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for(int i=0;i<20;i++)
                    Circle_Profile(),
                ],//스토리 row 스크롤
              ),
            ),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/bom.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      const snackBar = SnackBar(
                        content: Text('Tap'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                      child: Text("cha__imag")
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.59,
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert)
                    ),
                ],
              ),
            ),//프로필 머리바
            Container(
              width: wid,//MediaQuery.of(context).size.width,
              height: wid,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/T1.jpg'),
                ),
              ),
            ),//T1사진
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: DecoratedIcon(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.transparent,
                    ),
                    decoration: IconDecoration(
                      border: IconBorder(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),//하트 아이콘
                IconButton(
                  onPressed: () {},
                  icon: DecoratedIcon(
                    icon: Icon(
                      Icons.chat_bubble,
                      color: Colors.transparent,
                    ),
                    decoration: IconDecoration(
                      border: IconBorder(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),//말풍선 icon
                IconButton(
                  onPressed: () {},
                  icon: DecoratedIcon(
                    icon: Icon(
                      IconData(0xf733,
                          fontFamily: 'CupertinoIcons',
                          fontPackage: 'cupertino_icons'),//종이비행기 icon
                      color: Colors.transparent,
                    ),
                    decoration: IconDecoration(
                      border: IconBorder(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),//종이비행기 icon
                SizedBox(
                  width: wid * 0.53,
                ),
                IconButton(
                  onPressed: () {},
                  icon: DecoratedIcon(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.transparent,
                    ),
                    decoration: IconDecoration(
                      border: IconBorder(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),//북마크 icon
              ],
            ),//icon 바
            Container(
              //padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width:80,
                    child: Stack(
                      children: [
                        Positioned(
                          left:20,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('images/T1.jpg'),
                                )
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          child: Container(
                            width: 35,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/bom.jpg'),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("min_uk님 외 100000명이 좋아합니다")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
