import 'package:facebook_clone/widgets/avathar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'circularButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String storyImages;
  final String avathar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.storyImages,
    required this.avathar,
    this.displayBorder = false,
    this.createStoryStatus = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 6, right: 6, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(storyImages), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 2,
              top: 2,
              child: createStoryStatus
                  ? CircularWidgetItem(
                      buttonAction: () {},
                      buttonIcon: Icons.add,
                    )
                  : Avathar(
                      displayImageName: avathar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                    )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "NA",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
