import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: '用户名',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: '密码',
              ),
              obscureText: true, // 隐藏输入的密码
            ),
            ElevatedButton(
              onPressed: () {
                // 登录逻辑
              },
              child: const Text('登录'),
            ),
          ],
        ),
      ),
    );
  }
}
