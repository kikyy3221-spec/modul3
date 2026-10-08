import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/pengajuan_model.dart';

class HalamanDetailLayanan extends StatelessWidget {
  final String nama;
  final String dinas;
  final String jam;
  final String keterangan;

  const HalamanDetailLayanan({
    super.key,
    required this.nama,
    required this.dinas,
    required this.jam,
    required this.keterangan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Layanan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                child: const Icon(
                  Icons.miscellaneous_services,
                  size: 45,
                ),
              ),
            ),
            const SizedBox(height: 25),

            Text(
              nama,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Dinas Penanggung Jawab',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(dinas),

            const SizedBox(height: 20),

            const Text(
              'Jam Operasional',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(jam),

            const SizedBox(height: 20),

            const Text(
              'Keterangan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(keterangan),

            const SizedBox(height: 35),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  context
                      .read<PengajuanModel>()
                      .tambahPengajuan(nama);

                  Navigator.pop(
                    context,
                    'Permohonan $nama telah diajukan.',
                  );
                },
                icon: const Icon(Icons.send),
                label: const Text(
                  'Ajukan Permohonan',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}