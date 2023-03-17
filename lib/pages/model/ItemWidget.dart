import 'package:flutter/material.dart';
import 'package:login_demo/pages/model/item.dart';

class ItemWidget extends StatelessWidget {
final Item item;

  const ItemWidget({super.key, required this.item}) :assert(item !=null);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
