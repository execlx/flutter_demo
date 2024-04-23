import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_lagou/routes/RoutesHandler.dart';

class Routes {
  static String root = "/";
  static String login = "/login";
  static String nofound = "/nofound";

  static void configureRoutes(FluroRouter router) {
    router.define(root, handler: indexHandler);
    router.define(login, handler: loginHandler);

    // 全局拦截器
    router.notFoundHandler = noFoundHandler;
  }
}
