import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String displayImageName;

  Avathar({required this.displayImageName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              displayImageName,
              width: 50,
              height: 50,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 1.0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.greenAccent, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
          ),
        )
      ],
    );
  }
}
