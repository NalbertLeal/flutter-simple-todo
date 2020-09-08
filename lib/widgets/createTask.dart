import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final Function onChange;
  final Function onCreate;

  CreateTask({
    @required this.width,
    @required this.height,
    @required this.controller,
    @required this.onChange,
    @required this.onCreate
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width * 0.8,
          height: height * 0.1,
          child: TextField(
            controller: controller,
            onChanged: onChange,
          ),
        ),
        Container(
          height: height * 0.1,
          child: RaisedButton(
            child: Text('Create'),
            onPressed: () {
              onCreate();
              controller.clear();
            },
          ),
        ),
      ],
    );
  }
}
