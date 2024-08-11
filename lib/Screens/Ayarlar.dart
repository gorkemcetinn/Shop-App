import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profil Bilgileri'),
            onTap: () {
              // Profil bilgileri sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Şifre Değiştir'),
            onTap: () {
              // Şifre değiştir sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('E-posta Güncelle'),
            onTap: () {
              // E-posta güncelleme sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Bildirim Ayarları'),
            onTap: () {
              // Bildirim ayarları sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Tema'),
            onTap: () {
              // Tema seçimi sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Dil Seçimi'),
            onTap: () {
              // Dil seçimi sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Gizlilik Ayarları'),
            onTap: () {
              // Gizlilik ayarları sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('İki Faktörlü Kimlik Doğrulama'),
            onTap: () {
              // İki faktörlü kimlik doğrulama sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Sıkça Sorulan Sorular (SSS)'),
            onTap: () {
              // SSS sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('İletişim'),
            onTap: () {
              // İletişim sayfasına yönlendir
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Çıkış Yap'),
            onTap: () {
              // Çıkış yapma işlemi
            },
          ),
        ],
      ),
    );
  }
}
