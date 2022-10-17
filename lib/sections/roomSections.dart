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
        padding: EdgeInsets.all(10),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.deepPurpleAccent),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Create\nRoom",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
