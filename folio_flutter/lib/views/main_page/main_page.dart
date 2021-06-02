import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _MainBody()),
    );
  }
}

class _MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Text('Main Page'),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/project');
            },
            child: Text('Go to Project Page'),
          ),
        ],
      )),
    );
  }
}
