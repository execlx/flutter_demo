import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lagou/routes/Routes.dart';
import 'package:flutter_lagou/utils/Global.dart';
import 'pages/Index.dart';

void main() {
  FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);
  Global.router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Index(),
      onGenerateRoute: Global.router?.generator,
      initialRoute: '/',
    );
  }
}
