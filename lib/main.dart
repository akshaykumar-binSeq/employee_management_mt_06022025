import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/infrastructure/employee_repository.dart';
import 'package:employee_management_mt_06022025/employee/presentation/employee_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  Future.delayed(const Duration(seconds: 2)).then(
    (value) =>
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
            .then(
      (_) => runApp(
        MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EmployeeBloc(EmployeeRepository()),
        ),
      ],
      child: GetMaterialApp(
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
        title: "Employee Management",
        home: EmployeeScreen(),
      ),
    );
  }
}
