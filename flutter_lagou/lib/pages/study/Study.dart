import 'package:flutter/material.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> {
  @override
  Widget build(BuildContext context) {
    return Container(child: const Text('学习内容'));
  }
}
