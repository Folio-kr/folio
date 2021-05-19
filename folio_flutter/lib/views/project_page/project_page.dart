import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:folio_flutter/views/widgets/app_bar.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: DesktopAppBar(),
      drawer: Drawer(
        child: _ProjectDrawer(),
      ),
      body: _ProjectBody(),
    );
  }
}

class _ProjectBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color: Colors.blue),
      tablet: (BuildContext context) {
        return Row(
          children: [
            // _ProjectDrawer(),
            _ProjectListView(),
          ],
        );
      },
      desktop: (BuildContext context) {
        return Row(
          children: [
            _ProjectDrawer(),
            _ProjectListView(),
          ],
        );
      },
      watch: (BuildContext context) => Container(color: Colors.purple),
    );
  }
}

class _ProjectDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('My To-do'),
          Text('Project'),
          Text('Time Line'),
          Text('Calendar'),
        ],
      ),
    );
  }
}

class _ProjectListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Project'),
          Text('진행중인 프로젝트'),
          Text('2021년 5월 19일'),
          _InprogressProjectListView(),
          Text('완료된 프로젝트'),
          _DoneProjectListView(),
        ],
      ),
    );
  }
}

class _InprogressProjectListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Folio 사업화 프로젝트'),
          Text('Folio 사업화 프로젝트'),
          Text('Folio 사업화 프로젝트'),
          Text('Folio 사업화 프로젝트'),
        ],
      ),
    );
  }
}

class _DoneProjectListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Project 1'),
          Text('Project 1'),
          Text('Project 1'),
          Text('Project 1'),
        ],
      ),
    );
  }
}
