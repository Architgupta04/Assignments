import 'package:flutter/material.dart';
import 'package:musicapp/screens/homePage.dart';
import 'package:musicapp/screens/homeScreen.dart';
import 'package:musicapp/screens/loadingScreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const LoadingScreen(),
    // theme: ThemeData.dark(),
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingScreen(),
      '/home': (context) => const HomePage(),
      '/home2': (context) => const Home(),
    },
  ));
}
