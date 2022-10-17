import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSections.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/widgets/appBarButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            AppBarWidgetItem(
              buttonAction: () {
                print('Searching');
              },
              buttonIcon: Icons.search,
            ),
            AppBarWidgetItem(
              buttonAction: () {
                print('Chating');
              },
              buttonIcon: Icons.chat_bubble_outline,
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
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey.shade300,
            ),
            RoomSection()
          ],
        ),
      ),
    );
  }
}
