import 'package:flutter/material.dart';
import 'package:nike_app/Widgets/listViews/vertical_list_view.dart';
import 'package:nike_app/Screens/Sepetim.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xAAF8EDED),
      child: const VerticalListView(
        horizontalItems: [
          {
            'title': 'Spor Ayakkabıları',
            'items': [
              {
                'imageUrl':
                    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4d76a93e-4e65-4c74-8555-e3fc78d9b0e4/alphafly-3-electric-yol-yar%C4%B1%C5%9F-ayakkab%C4%B1s%C4%B1-BGSlHC.png',
                'productName': 'Ürün Adı 1',
                'productPrice': '\$199.99',
              },
              {
                'imageUrl':
                    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4d76a93e-4e65-4c74-8555-e3fc78d9b0e4/alphafly-3-electric-yol-yar%C4%B1%C5%9F-ayakkab%C4%B1s%C4%B1-BGSlHC.png',
                'productName': 'Ürün Adı 2',
                'productPrice': '\$149.99',
              },
              {
                'imageUrl':
                    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4d76a93e-4e65-4c74-8555-e3fc78d9b0e4/alphafly-3-electric-yol-yar%C4%B1%C5%9F-ayakkab%C4%B1s%C4%B1-BGSlHC.png',
                'productName': 'Ürün Adı 2',
                'productPrice': '\$149.99',
              },
            ],
          },
          {
            'title': 'Koşu Ayakkabıları',
            'items': [
              {
                'imageUrl':
                    'https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg',
                'productName': 'Futbol',
                'productPrice': '100',
              },
              {
                'imageUrl':
                    'https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg',
                'productName': 'Futbol',
                'productPrice': '200',
              },
              {
                'imageUrl':
                    'https://cdn.pixabay.com/photo/2018/06/12/20/17/soccer-3471402_1280.jpg',
                'productName': 'Futbol',
                'productPrice': '300',
              },
            ],
          },
        ],
        imageTextCards: [
          {
            'imageUrl':
                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/abb8771c-602f-48eb-ac4b-32861c97e0ee/NIKE+AIR+ZOOM+G.T.+JUMP+2+OLY.png',
            'text': 'G.T. Jump 2 Electric',
            'destinationPage': Sepetim(),
          },
          {
            'imageUrl':
                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/73ee1701-2fa4-4c2a-8d47-2e5e22052025/NIKE+KIDS+CROSSCOURT+OLY+%28GS%29.png',
            'text': 'Crosscourt Electric',
            'destinationPage': Sepetim(),
          },
        ],
      ),
    );
  }
}
