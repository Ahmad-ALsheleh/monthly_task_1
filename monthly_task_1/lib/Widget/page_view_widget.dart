import 'package:flutter/material.dart';
// ويدجت PageView
class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
      ),
      body: PageView(
        children: [
          Center(child: Text('الصفحة الأولى', style: TextStyle(fontSize: 24))),
          Center(child: Text('الصفحة الثانية', style: TextStyle(fontSize: 24))),
          Center(child: Text('الصفحة الثالثة', style: TextStyle(fontSize: 24))),
        ],
      ),
    );
  }
}
