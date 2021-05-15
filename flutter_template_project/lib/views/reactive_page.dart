import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template_project/viewmodels/app_viewmodel.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_template_project/viewmodels/test_viewmodel.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppModelViewmodel.to
        .title_update(title: 'Flutter template : Reactive Page');
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: GetBuilder<TestViewmodel>(builder: (_) {
                return ElevatedButton(
                  onPressed: () {
                    var id = TestViewmodel.to.test.id + 1;
                    var value = TestViewmodel.to.test.value + 1;
                    TestViewmodel.to.test_update(id: id, value: value);
                  },
                  child: Text('update !'
                      '${TestViewmodel.to.test.id} / ${TestViewmodel.to.test.value}'),
                );
              }),
            ),
            Expanded(
              child: ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  // Check the sizing information here and return your UI
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop) {
                    return Container(
                      color: Colors.blue,
                      child: Center(child: Text('Desktop')),
                    );
                  }

                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return Container(
                      color: Colors.red,
                      child: Center(child: Text('tablet')),
                    );
                  }

                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.watch) {
                    return Container(
                      color: Colors.yellow,
                      child: Center(child: Text('watch')),
                    );
                  }

                  return Container(
                    color: Colors.purple,
                    child: Center(child: Text('mobile')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
