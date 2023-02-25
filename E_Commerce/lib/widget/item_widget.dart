import 'package:e_commerce/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) :assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(),
      child: ListTile(
        onTap: (){
          print(item.name);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$ ${item.price}",
          style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
