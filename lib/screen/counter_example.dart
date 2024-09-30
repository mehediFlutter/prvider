import 'package:flutter/material.dart';

class CounterExample extends StatelessWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider"),centerTitle: true,),
    body: Center(child: Text("0"),),
    );
  }
}