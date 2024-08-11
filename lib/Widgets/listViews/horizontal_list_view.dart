import 'package:flutter/material.dart';
import 'package:nike_app/Widgets/Cards/ProductCard.dart';

class HorizontalListView extends StatelessWidget {
  final List<Map<String, String>> items;
  final String categoryTitle; // Kategori başlığı

  const HorizontalListView({
    Key? key,
    required this.items,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            categoryTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductCard(
                  imageUrl: item['imageUrl']!,
                  productName: item['productName']!,
                  productPrice: item['productPrice']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
