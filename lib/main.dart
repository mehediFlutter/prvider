import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/screen/counter_example.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    bool modeBool = counterProvider.themeModeValue;

    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.white,
              onPrimary: Colors.white12,
              secondary: Colors.black,
              onSecondary: Colors.grey,
              error: Colors.red,
              onError: Colors.redAccent,
              surface: Colors.white,
              onSurface: Colors.white),
          scaffoldBackgroundColor: Colors.white,
        
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 20, color: Colors.black))),
      darkTheme: ThemeData(
        colorScheme: ColorScheme(
              brightness: Brightness.dark,
              primary: Colors.black,
              onPrimary: Colors.grey,
              secondary: Colors.grey,
              onSecondary: Colors.grey,
              error: Colors.red,
              onError: Colors.redAccent,
              surface: Colors.white,
              onSurface: Colors.white),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 20, color: Colors.white))),
      themeMode:
          counterProvider.themeModeValue ? ThemeMode.light : ThemeMode.dark,
      home: CounterExample(),
    );
  }
}
