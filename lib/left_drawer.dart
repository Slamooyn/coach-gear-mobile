import 'package:flutter/material.dart';
import 'package:coachgear_mobile/menu.dart';          // Halaman utama produk
import 'package:coachgear_mobile/productform.dart';   // Form tambah produk

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // biar header nempel di atas
        children: [
          // Bagian header drawer
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Coach Gear Product',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Kelola dan temukan produk berkualitas di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),

          // Bagian routing menu
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              // Navigasi ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.add_box_outlined),
            title: const Text('Tambah Produk'),
            onTap: () {
              // Navigasi ke form tambah produk
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProductForm()),
              );
            },
          ),

          const Divider(),
        ],
      ),
    );
  }
}
