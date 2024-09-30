import 'package:flutter/material.dart';
import 'package:provider_state_management/screen/carts_screen.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar(context) {
    return AppBar(
      title: Text("Products"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: Icon(Icons.shopping_cart))
      ],
    );
  }

  Widget _buildUI() {
    return Container();
  }
}
