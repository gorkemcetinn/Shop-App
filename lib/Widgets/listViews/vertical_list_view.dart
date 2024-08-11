import 'package:flutter/material.dart';
import 'package:nike_app/Widgets/Cards/ImageTextCard.dart';
import 'horizontal_list_view.dart';

class VerticalListView extends StatelessWidget {
  final List<Map<String, dynamic>> horizontalItems;
  final List<Map<String, dynamic>> imageTextCards;

  const VerticalListView({
    Key? key,
    required this.horizontalItems,
    required this.imageTextCards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: horizontalItems.length *
          2, // Her kategori için iki öğe: bir HorizontalListView ve bir ImageTextCard
      itemBuilder: (context, index) {
        // İki öğeden biri HorizontalListView, diğeri ImageTextCard
        if (index.isEven) {
          final category = horizontalItems[index ~/ 2];
          return Column(
            children: [
              HorizontalListView(
                items: category['items'],
                categoryTitle: category['title'],
              ),
              const SizedBox(height: 16),
            ],
          );
        } else {
          final cardIndex = index ~/ 2; // ImageTextCard'ların index'i
          final cardData = imageTextCards[cardIndex];
          return Column(
            children: [
              ImageTextCard(
                imageUrl: cardData['imageUrl'],
                text: cardData['text'],
                destinationPage: cardData['destinationPage'],
              ),
              const SizedBox(height: 16),
            ],
          );
        }
      },
    );
  }
}
