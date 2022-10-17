import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSections.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/story_section.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thickDivider() {
      return Divider(
        thickness: 10,
        color: Colors.grey.shade300,
      );
    }

    Widget thinDivider() {
      return Divider(
        thickness: 1,
        color: Colors.grey.shade300,
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          actions: [
            CircularWidgetItem(
              buttonAction: () {
                print('Searching');
              },
              buttonIcon: Icons.search,
            ),
            CircularWidgetItem(
              buttonAction: () {
                print('Chating');
              },
              buttonIcon: Icons.mark_chat_unread_sharp,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const SizedBox(
              height: 2,
            ),
            const StatusSection(),
            thinDivider(),
            HeaderButtonSection(),
            thickDivider(),
            const RoomSection(),
            thickDivider(),
            const StorySection(),
            thickDivider(),
            PostCard(
              avathar: networkFive,
              name: 'Adarsh S',
              publishAt: '5h',
              postTitle: 'Happy Birthday',
              postImage: aappu,
            ),
            thinDivider(),
            PostCard(
              avathar: networkThree,
              name: 'Nidhin KK',
              publishAt: '5h',
              postTitle: 'Bro',
              postImage: networkFour,
            ),
            thinDivider(),
            PostCard(
              avathar: networkTwo,
              name: 'Rameesh KK',
              publishAt: '1h',
              postTitle: 'Dubai days',
              postImage: statusOne,
            ),
            thinDivider(),
          ],
        ),
      ),
    );
  }
}
