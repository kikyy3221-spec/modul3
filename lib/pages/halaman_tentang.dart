import 'package:flutter/material.dart';

class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Icon(
                Icons.location_city,
                size: 90,
              ),

              const SizedBox(height: 20),

              const Text(
                'Nusantara Cerdas Mobile',
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Aplikasi layanan warga Smart City '
                'yang membantu masyarakat memperoleh '
                'informasi dan mengakses layanan publik '
                'secara lebih mudah.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Text(
                'Versi 1.0.0',
              ),
            ],
          ),
        ),
      ),
    );
  }
}