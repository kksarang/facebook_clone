import 'package:facebook_clone/widgets/avathar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(
        displayImageName: networkOne,
        displayStatus: false,
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
