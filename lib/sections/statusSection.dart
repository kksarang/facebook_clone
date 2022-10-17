import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          'https://scontent.fccj3-1.fna.fbcdn.net/v/t39.30808-6/285450721_341994531408348_3670658130403679433_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=ikLkaTGa-A0AX-TtMEu&_nc_ht=scontent.fccj3-1.fna&oh=00_AT9MH2IjTvR27dEkSLJ2cptV5XjfbqjEfYCVgyWXtI8lUw&oe=635265EB',
          width: 50,
          height: 50,
        ),
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
