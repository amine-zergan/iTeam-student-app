import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/routes/route_name.dart';
import 'package:items_app/core/routes/route_page.dart';
import 'package:items_app/core/theme/theme_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeApp.darkTheme(),
      theme: ThemeApp.ligthTheme(),
      themeMode: ThemeMode.light,
      getPages: GetRoutePage.getPage,
      initialRoute: RouteNamePage.onBoardPath,
    );
  }
}
