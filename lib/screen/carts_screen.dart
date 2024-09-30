import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/cons.dart';
import 'package:provider_state_management/provider/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text("Cart"),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(
      builder: (context, provider, _) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.8,
              child: ListView.builder(
                primary: false,
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  Products productIndex = provider.items[index];
                  return ListTile(
                    onLongPress: () {
                      provider.remove(productIndex);
                    },
                    title: Text(productIndex.name),
              
                  );
                },
              ),
            ),
            Text(provider.getCartTotal().toString()),
          ],
        );
      },
    );
  }
}
