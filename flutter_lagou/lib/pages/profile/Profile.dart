import 'package:flutter/material.dart';
import 'package:flutter_lagou/routes/Routes.dart';
import 'package:flutter_lagou/utils/Global.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Global.router?.navigateTo(context, Routes.login);
            },
            child: const Text('跳转登录页')),
        // ElevatedButton(onPressed: () {
        //   Navigator.pushNamed(context, '/register');
        // }, child: Text('跳转注册页')),
      ],
    ));
  }
}
