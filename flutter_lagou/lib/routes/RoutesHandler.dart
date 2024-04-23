import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/Index.dart';
import '../pages/user/Login.dart';
import '../pages/nofound/NoFound.dart';

var noFoundHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const NoFound();
});

var indexHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Index();
});

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Login();
});
