import 'package:flutter/material.dart';
import 'package:instagram_clone/navigation_container.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      home: NavigationContainer(),
    );
  }
}
