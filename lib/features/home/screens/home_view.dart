import 'package:flutter/material.dart';
import 'package:nti_e_commerce/data/products.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemBuilder: (context, index) =>
            ListTile(title: Text(items[index].name)),
      ),
    );
  }
}
