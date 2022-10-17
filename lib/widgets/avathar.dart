import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String displayImageName;
  final bool displayStatus;

  Avathar({required this.displayImageName, required this.displayStatus});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1.0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              displayImageName,
              width: 50,
              height: 50,
            ),
          ),
        ),
        statusIndicator
      ],
    );
  }
}
