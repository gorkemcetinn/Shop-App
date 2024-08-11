import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String productDescription;

  const ProductDetailPage({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productDescription,
  }) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Favorilere ekleme işlevi
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(widget.imageUrl, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              widget.productName,
            ),
            SizedBox(height: 8),
            Text(
              widget.productDescription,
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: DropdownButton<int>(
                    value: _quantity,
                    onChanged: (int? newValue) {
                      setState(() {
                        _quantity = newValue!;
                      });
                    },
                    items: List.generate(10, (index) {
                      return DropdownMenuItem<int>(
                        value: index + 1,
                        child: Text('${index + 1}'),
                      );
                    }),
                    isExpanded: true,
                    underline: Container(
                      height: 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Satın alma işlevi
                    print('Satın al: $_quantity adet');
                  },
                  child: Text('Satın Al'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    // Favorilere ekleme işlevi
                  },
                  iconSize: 28,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
