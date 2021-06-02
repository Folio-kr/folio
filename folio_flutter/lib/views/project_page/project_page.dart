import 'package:flutter/material.dart';
import 'package:folio_flutter/datas/dummy_project.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:folio_flutter/views/project_page/project_tile.dart';

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
      mobile: (BuildContext context) {
        return Row(
          children: [
            // _ProjectDrawer(),
            Flexible(child: _ProjectListView()),
          ],
        );
      },
      tablet: (BuildContext context) {
        return Row(
          children: [
            // _ProjectDrawer(),
            Flexible(child: _ProjectListView()),
          ],
        );
      },
      desktop: (BuildContext context) {
        return Row(
          children: [
            _ProjectDrawer(),
            Flexible(child: _ProjectListView()),
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
    var projects = DummyInprogressProject;
    // return Container(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       for (var project in projects)
    //         SizedBox(child: Card(child: ListTile(title: Text(project.title))))
    //     ],
    //   ),
    // );

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[for (var project in projects) ProjectTile(project)],
      ),
    );
  }
}

class _DoneProjectListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var projects = DummyDoneProject;
    // return Container(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       for (var project in projects)
    //         SizedBox(child: Card(child: ListTile(title: Text(project.title))))
    //     ],
    //   ),
    // );

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[for (var project in projects) ProjectTile(project)],
      ),
    );
  }
}
