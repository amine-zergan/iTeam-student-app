import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:items_app/core/routes/route_name.dart';
import 'package:items_app/core/routes/route_page.dart';
import 'package:items_app/core/theme/theme_app.dart';
import 'package:items_app/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDi();
  runApp(
    const MainApp(),
  );
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
      transitionDuration: const Duration(
        milliseconds: 600,
      ),
      defaultTransition: Transition.fadeIn,
      getPages: GetRoutePage.getPage,
      initialRoute: RouteNamePage.onBoardPath,
    );
  }
}
