import 'package:flutter/material.dart';

Widget Circle_Profile(context){
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/input');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/bom.jpg'),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          Text(
            "내 스토리",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      )
    ],
  );
}