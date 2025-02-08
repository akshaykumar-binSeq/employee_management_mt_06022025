import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      builder: (context, child) {
        double designWidth = 1440;
        double designHeight = 3120;

        final mediaQueryData = MediaQuery.of(context);
        double screenWidth = View.of(context).physicalSize.width;
        double screenHeight = View.of(context).physicalSize.height;
        double devicePixelRatio = View.of(context).devicePixelRatio;

        double widthFactor = screenWidth / designWidth;
        double heightFactor = screenHeight / designHeight;
        double scalingFactor =
            widthFactor < heightFactor ? widthFactor : heightFactor;

        return MediaQuery(
            data: mediaQueryData.copyWith(
                textScaler: TextScaler.linear(
                    scalingFactor < 0.8 ? 0.9 : scalingFactor)),
            child: Container(
              transform: Matrix4.diagonal3Values(1, 1, devicePixelRatio),
              child: child!,
            ));
      },
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.EMPLOYEE,
      getPages: AppPages.routes,
    ),
  );
}
