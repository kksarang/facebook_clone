import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'avathar.dart';
import 'blueTick.dart';

class PostCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String publishAt;
  final String postTitle;
  final String postImage;

  PostCard(
      {required this.avathar,
      required this.name,
      required this.publishAt,
      required this.postTitle,
      required this.postImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSelection(),
          const SizedBox(
            height: 4,
          ),
          imagePosting(),
          const SizedBox(
            height: 10,
          ),
          footerSection()
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.thumb_up,
            color: Colors.blue,
            size: 20,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            '14k',
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
          const SizedBox(
            width: 90,
          ),
          Text(
            '100 Comments',
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
          const SizedBox(
            width: 90,
          ),
          Text(
            'Share',
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget imagePosting() {
    return Container(
      child: Image.network(
        postImage,
      ),
    );
  }

  Widget titleSelection() {
    return Container(
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            postTitle == null ? "" : postTitle,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(
        displayImageName: avathar,
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
    );
  }
}
