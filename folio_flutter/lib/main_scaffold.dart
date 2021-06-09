import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

// views
import 'package:folio_flutter/views/main_page/main_page.dart';
import 'package:folio_flutter/views/project_page/project_page.dart';

// controllers
import 'package:folio_flutter/controllers/app_controller.dart';
import 'package:folio_flutter/controllers/user_controller.dart';

// dev views
import 'package:folio_flutter/views/debug_page/debug_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(name: '/', page: () => MainPage()),
      GetPage(name: '/main', page: () => MainPage()),
      GetPage(name: '/project', page: () => ProjectPage()),
      GetPage(name: '/debug', page: () => DebugPage()),

    ];

    return GetMaterialApp(
      title: 'Folio',
      home: MainPage(),
      theme: FolioLightTheme,
      getPages: _getPages,
      initialBinding: AppBinding(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => AppController());
    Get.put<AppController>(AppController());
    Get.lazyPut(() => UserController());
  }
}
