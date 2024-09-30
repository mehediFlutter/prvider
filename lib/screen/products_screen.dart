import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/cons.dart';
import 'package:provider_state_management/provider/cart_provider.dart';
import 'package:provider_state_management/screen/carts_screen.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(context),
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

  Widget _buildUI(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return ListView.builder(
      itemCount: PRODUCTS.length,
      itemBuilder: (context, index) {
        Products productsIndex = PRODUCTS[index];
        return ListTile(
          leading: Container(
            height: 25,
            width: 25,
            color: productsIndex.color,
          ),
          title: Text(productsIndex.name),
          trailing: Checkbox(
              value: cartProvider.items.contains(productsIndex),
              onChanged: (value) {
                if(value == true){
                  cartProvider.add(productsIndex);
                }
                else {
                   cartProvider.remove(productsIndex);
                }
              }),
        );
      },
    );
  }
}
