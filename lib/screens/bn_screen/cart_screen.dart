import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 10 , top: 10 , start: 10),
        child: ListTile(
        leading: Icon(Icons.production_quantity_limits),
          title: Text(
            'Production'
          ),
          subtitle: Text(
            'Production'
          ),
          trailing: Icon(Icons.energy_savings_leaf_sharp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.blue,
              width: 2
            )
          ),
    ),
      ),)
    ;
  }
}
