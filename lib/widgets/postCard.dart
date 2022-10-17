import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import 'avathar.dart';

class PostCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String publishAt;

  PostCard({required this.avathar, required this.name, required this.publishAt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avathar(
              displayImageName: networkThree,
              displayStatus: false,
            ),
            title: Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 6,
                ),
                BlueTick()
              ],
            ),
            subtitle: Row(
              children: [
                Text(publishAt == null ? "" : publishAt),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.public,
                  color: Colors.grey[700],
                  size: 14,
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
