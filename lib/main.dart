import 'package:flutter/material.dart';
import 'package:provider_state_management/screen/counter_example.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterExample();
  }
}