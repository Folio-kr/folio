import 'package:flutter/material.dart';
import 'package:get/get.dart';

// controllers
import 'package:folio_flutter/controllers/app_controller.dart';

// themes
import 'package:folio_flutter/themes.dart';


class DebugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<AppController>(AppController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Debug page!'),
            _DebugPageBody(),
          ],
        ),
      ),
    );
  }
}

class _DebugPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Debug body'),
        TextButton(
            onPressed: () {
              print('isDesktop : ${AppController.to.isDesktop}');
              print('isWindows : ${AppController.to.isWindows}');
              print('isMacOS : ${AppController.to.isMacOS}');
              print('isLinux : ${AppController.to.isLinux}');

              print('isWeb : ${AppController.to.isWeb}');
              print('isMobile : ${AppController.to.isMobile}');
              print('isAndroid : ${AppController.to.isAndroid}');
              print('isIos : ${AppController.to.isIos}');
            },
            child: Text(AppController.to.PlatformMessage)),
        
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.dark());
            },
            child: Text('Dark mode!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.light());
            },
            child: Text('Light mode!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Text('Toggle theme!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(FolioDarkTheme);
            },
            child: Text('Custom Dark theme!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(FolioLightTheme);
            },
            child: Text('Custom Light theme!')),
        ElevatedButton(
            onPressed: () {
              AppController.to.toggleTheme();
            },
            child: Text('toggle Folio theme!')),
      ],
    );
  }
}
