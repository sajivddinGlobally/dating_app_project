import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hearpage extends StatefulWidget {
  const Hearpage({super.key});

  @override
  State<Hearpage> createState() => _HearpageState();
}

class _HearpageState extends State<Hearpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "heart page ",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
