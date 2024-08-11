import 'package:flutter/material.dart';
import 'package:nike_app/Screens/UrunDetay.dart';

class ImageTextCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Widget destinationPage;

  const ImageTextCard({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.destinationPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ProductDetailPage(
                    imageUrl:
                        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/abb8771c-602f-48eb-ac4b-32861c97e0ee/NIKE+AIR+ZOOM+G.T.+JUMP+2+OLY.png',
                    productName: 'Ürün Adı 1',
                    productDescription: ' Ürün Açıklaması',
                  )),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Köşe yuvarlama
        ),
        child: Stack(
          children: [
            // Arka plandaki resim
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // Görselin köşe yuvarlama
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 200, // Kartın yüksekliği
                width: double.infinity, // Kartın genişliği
              ),
            ),
            // Üstteki yazı
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color:
                    Colors.black.withOpacity(0.5), // Arka plan rengi ve opaklık
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
