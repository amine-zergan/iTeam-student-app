import 'package:flutter/material.dart';
import 'package:items_app/core/theme/theme_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeApp.darkTheme(),
      theme: ThemeApp.ligthTheme(),
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Text(
            'Start Iteams Application!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
