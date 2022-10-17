import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoom(),
        ],
      ),
    );
  }

  Widget createRoom() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.green),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: const [
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Create\nRoom",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }
}
