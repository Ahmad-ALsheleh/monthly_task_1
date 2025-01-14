import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monthly_task_1/sliver_appbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SliverAppbar()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(Icons.perm_identity, size: 100, color: Colors.blueGrey),
            Image.asset('images/my_photo.jpg',width: 100,height: 100,),
            SizedBox(height: 20),
            Text(
              "splash screen",
              style: TextStyle(color: Colors.black54, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
