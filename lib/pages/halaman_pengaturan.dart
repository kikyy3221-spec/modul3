import 'package:flutter/material.dart';

class HalamanPengaturan extends StatelessWidget {
  const HalamanPengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Kota'),
      ),

      body: ListView(
        children: [
          SwitchListTile(
            value: true,

            onChanged: (value) {},

            title: const Text(
              'Notifikasi Layanan',
            ),

            subtitle: const Text(
              'Terima pemberitahuan mengenai layanan warga',
            ),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Bahasa'),
            subtitle: const Text('Bahasa Indonesia'),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Lokasi Kota'),
            subtitle: const Text('Nusantara'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}