
import 'package:flutter/material.dart';
import 'package:tugas2/navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 55,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Warga Nusantara',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            'NIK: 1234567890123456',
          ),

          const SizedBox(height: 25),

          Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nama'),
                  subtitle: Text('M Habib Rizky Daulay'),
                ),

                const Divider(height: 1),

                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('rizky@gmail.com'),
                ),

                const Divider(height: 1),

                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Alamat'),
                  subtitle: Text('Kota Nusantara'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.riwayat,
                );
              },
              icon: const Icon(Icons.history),
              label: const Text(
                'Buka Riwayat Laporan',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
