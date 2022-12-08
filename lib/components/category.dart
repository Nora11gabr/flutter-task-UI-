import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class Category_Achieve extends StatelessWidget {
  Category_Achieve({super.key, this.text, this.color, this.img});
  String? text;
  Color? color;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: color,
      ),
      child: Column(
        children: [
          Image.asset(
            img!,
            width: 80,
            height: 80,
          ),
          Text(
            text!,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, wordSpacing: 2),
          ),
        ],
      ),
    );
  }
}

class Category_invest extends StatelessWidget {
  Category_invest({super.key, this.value_, this.text_name, this.text_num});
  String? text_name;
  String? text_num;
  double? value_;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      width: 170,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xff2a292f),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.apple_outlined,
                size: 40,
                color: Colors.white,
              ),
              Icon(
                Icons.drag_indicator_sharp,
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            text_name!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            text_num!,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          LinearProgressIndicator(
            value: value_,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
          ),
        ],
      ),
    );
  }
}

class profile_info extends StatelessWidget {
  profile_info(
      {super.key, this.text_na, this.text_num, this.color_, this.color_text});
  String? text_num;
  String? text_na;
  Color? color_;
  Color? color_text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 25),
      margin: EdgeInsets.all(8),
      width: 114.9,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: color_,
      ),
      child: Column(
        children: [
          Text(
            text_num!,
            style: TextStyle(
              color: color_text,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            text_na!,
            style: TextStyle(
              color: color_text,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class post_info extends StatelessWidget {
  post_info(
      {super.key,
      this.Time,
      this.img,
      this.num_comments,
      this.num_loves,
      this.person_name,
      this.post_text});
  String? img;
  String? person_name;
  String? Time;
  String? post_text;
  String? num_loves;
  String? num_comments;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 25),
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xff2a292f),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(img!),
                  radius: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      person_name!,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      Time!,
                      style: TextStyle(
                          color: Color.fromARGB(255, 105, 104, 109),
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              post_text!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                  Text(
                    '52',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.comment_sharp, color: Colors.white),
                  Text(
                    '52',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.share, color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
