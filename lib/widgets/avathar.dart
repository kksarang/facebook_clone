import 'package:flutter/cupertino.dart';

import '../assets.dart';

class Avathar extends StatelessWidget {
  const Avathar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        networkOne,
        width: 50,
        height: 50,
      ),
    );
  }
}
