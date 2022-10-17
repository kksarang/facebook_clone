import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidgetItem extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarWidgetItem({required this.buttonAction, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}
