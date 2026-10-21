import 'package:flutter/material.dart';
import 'package:nti_e_commerce/data/products.dart';
import 'package:nti_e_commerce/features/home/widgets/home_custom_app_bar.dart';
import 'package:nti_e_commerce/features/home/widgets/item_widget_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F6FA),
      appBar: CustomHeaderAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              separatorBuilder: (context, index) => SizedBox(height: 8),
              itemBuilder: (context, index) => ItemWidgetView(
                title: items[index].name,
                image: items[index].imageUrl,
                category: items[index].category,
                price: items[index].price.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
