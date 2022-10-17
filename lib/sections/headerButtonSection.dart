import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = const VerticalDivider(
      thickness: 1,
      color: Colors.grey,
    );
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: const [
              Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Live"),
            ],
          ),
          verticalDivider,
          Row(
            children: const [
              Icon(
                Icons.photo_library_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Photo"),
            ],
          ),
          verticalDivider,
          Row(
            children: const [
              Icon(Icons.video_call, color: Colors.purple),
              SizedBox(
                width: 10,
              ),
              Text(
                "Room",
                style: TextStyle(color: Colors.purple),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
