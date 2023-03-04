import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: "Cart".text.xl.bold.make(),
      backgroundColor: Colors.transparent,
    ),


      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index)=>ListTile(),


      ),

    );
  }
}


class _cartlist extends StatelessWidget {
  const _cartlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
