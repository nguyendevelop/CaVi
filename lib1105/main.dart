import 'dart:js';

import 'package:cavi_app/providers/api_provider.dart';
import 'package:cavi_app/screens/home/controllers/home_controller.dart';
import 'package:cavi_app/screens/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ApiProvider()),
      ChangeNotifierProvider(create: (_) => MainScreenNotifier())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cavi App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
