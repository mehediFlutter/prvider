import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';

class AnotherPageToSeeValueOfProvider extends StatelessWidget {
  const AnotherPageToSeeValueOfProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider =Provider.of<CounterProvider>(context) ;
    return Scaffold(
      body: Center(child: Text(counterProvider.count.toString(),style: TextStyle(fontSize: 20),),),
    );
  }
}