import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ProjectBody(),
    );
  }
}

class _ProjectBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color: Colors.blue),
      tablet: (BuildContext context) => Container(color: Colors.yellow),
      desktop: (BuildContext context) => Container(color: Colors.red),
      watch: (BuildContext context) => Container(color: Colors.purple),
    );
  }
}
