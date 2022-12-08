import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertasklev/components/category.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1E1F24),
      appBar: AppBar(
        title: Text('profile'),
        backgroundColor: Color(0XFF1E1F24),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('asset/images/profilephoto/user.png'),
                    radius: 60,
                  ),
                ),
              ),
              Text(
                'John Edwards',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  '\@marvin_ed',
                  style: TextStyle(
                    color: Color.fromARGB(255, 57, 56, 60),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              profile_info(
                text_na: 'Posts',
                text_num: '32',
                color_: Color(0xffbfeab9),
                color_text: Colors.black,
              ),
              profile_info(
                text_na: 'Followers',
                text_num: '26354',
                color_: Color(0xff2a292f),
                color_text: Colors.white,
              ),
              profile_info(
                text_na: 'Subscriptions',
                text_num: '256',
                color_: Color(0xff2a292f),
                color_text: Colors.white,
              ),
            ],
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
          post_info(
            post_text: 'Bought \$300 of Apple',
            person_name: 'John Edwards',
            Time: '5 min ago',
            img: 'asset/images/profilephoto/user.png',
          ),
          post_info(
            post_text: 'Bought \$300 of Apple',
            person_name: 'Anna ',
            Time: '35 min ago',
            img: 'asset/images/icons/user3.jpg',
          ),
          post_info(
            post_text: 'Bought \$300 of Apple',
            person_name: 'Robert',
            Time: '12 hours ago',
            img: 'asset/images/icons/user2.png',
          ),
        ]),
      ),
    );
  }
}
