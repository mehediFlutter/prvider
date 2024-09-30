import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/screen/another_page_to_scc_value_of_provider.dart';

class CounterExample extends StatelessWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider countProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              countProvider.count.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AnotherPageToSeeValueOfProvider()));
              },
              child: Text("See the value")),
          TextButton(
              onPressed: () {
                countProvider.themeChange();
                
              },
              child: Text(countProvider.themeModeValue ? "Dark" : "Light"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
