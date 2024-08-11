import 'package:flutter/material.dart';
import 'package:nike_app/Screens/Ayarlar.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xAAF8EDED),
            ),
            child: Text(
              'Menü',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () {
              // Ana sayfa seçeneğine tıklandığında yapılacak işlemleri buraya ekleyin
              Navigator.pop(context); // Drawer'ı kapat
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              // Ayarlar seçeneğine tıklandığında yapılacak işlemleri buraya ekleyin
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SettingsPage())); // Drawer'ı kapat
            },
          ),
          // Diğer Drawer öğelerini buraya ekleyebilirsiniz
        ],
      ),
    );
  }
}
