import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/screen/counter_example.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     CounterProvider counterProvider = Provider.of<CounterProvider>(context);
     bool modeBool = counterProvider.themeModeValue;

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          brightness: Brightness.light,
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 20, color: Colors.black))),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 20, color: Colors.white))),
              themeMode: counterProvider.themeModeValue?ThemeMode.light:ThemeMode.dark,
    
      home: CounterExample(),
    );
  }
}
