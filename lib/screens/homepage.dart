import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertasklev/components/category.dart';
import 'package:fluttertasklev/screens/profile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1E1F24),
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.format_align_left_sharp))
          ],
        ),
        backgroundColor: Color(0XFF1E1F24),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello,  john',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Color(0xff2a292f),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Profile_page();
                      },
                    ),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 27,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('asset/images/profilephoto/user.png'),
                          radius: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'YOUR BALANCE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 221, 126, 54)),
                          ),
                          Text('\$23.052.82',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(left: 43),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Achievements',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'See all ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 221, 126, 54),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category_Achieve(
                    text: '1 Week Streak',
                    color: Color(0xfff28c46),
                    img:
                        'asset/images/icons/470-4700907_bomb-cartoon-cloud-icon-bomb-icon-png.png',
                  ),
                  Category_Achieve(
                    text: '3 Week Streak',
                    color: Color(0xffc0ebbd),
                    img: 'asset/images/icons/download.png',
                  ),
                  Category_Achieve(
                    text: '1 Week Streak',
                    color: Color(0xfff28c46),
                    img:
                        'asset/images/icons/470-4700907_bomb-cartoon-cloud-icon-bomb-icon-png.png',
                  ),
                  Category_Achieve(
                    text: '3 Week Streak',
                    color: Color(0xffc0ebbd),
                    img: 'asset/images/icons/download.png',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Investment portfolio',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'See all ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 221, 126, 54),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Category_invest(
                      text_name: 'Apple',
                      text_num: '\$10.230(54.4%)',
                      value_: .6,
                    ),
                    Category_invest(
                      text_name: 'Activision Blizzard',
                      text_num: '\$52.230(22.4%)',
                      value_: .4,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Category_invest(
                      text_name: 'AMD',
                      text_num: '\$1.230(20.4%)',
                      value_: .3,
                    ),
                    Category_invest(
                      text_name: 'Value',
                      text_num: '\$12.230(71.4%)',
                      value_: .7,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
