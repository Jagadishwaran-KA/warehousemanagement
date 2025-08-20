import 'package:flutter/material.dart';
// import 'screens/Login.dart';
// import 'screens/bclogin.dart';
import 'screens/dashboard.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(color: Colors.grey[100],child: Dashboard
        (),),
      );
  }
}
