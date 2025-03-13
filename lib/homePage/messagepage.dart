import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({super.key});

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "message  page ",
          style: TextStyle(fontSize: 30),
        ),
    );
  }
}
