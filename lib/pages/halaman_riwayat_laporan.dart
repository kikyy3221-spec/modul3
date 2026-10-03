import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/pengajuan_model.dart';

class HalamanRiwayatLaporan extends StatelessWidget {
  const HalamanRiwayatLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    final pengajuan = context.watch<PengajuanModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Laporan'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Menampilkan pengajuan layanan dari Provider
          if (pengajuan.pengajuan.isNotEmpty) ...[
            const Text(
              'Riwayat Pengajuan Layanan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            ...pengajuan.pengajuan.map(
              (namaLayanan) => Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.description),
                  ),
                  title: Text(namaLayanan),
                  subtitle: const Text(
                    'Status: Diajukan',
                  ),
                  trailing: const Icon(
                    Icons.access_time,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],

          // Laporan yang sudah ada sebelumnya
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.description),
              ),
              title: Text(
                'Laporan Jalan Rusak',
              ),
              subtitle: Text(
                'Status: Diproses',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.lightbulb),
              ),
              title: Text(
                'Lampu Jalan Mati',
              ),
              subtitle: Text(
                'Status: Selesai',
              ),
              trailing: Icon(
                Icons.check_circle,
              ),
            ),
          ),

          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.delete),
              ),
              title: Text(
                'Sampah Menumpuk',
              ),
              subtitle: Text(
                'Status: Diterima',
              ),
              trailing: Icon(
                Icons.access_time,
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Membuat laporan baru...',
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              tooltip: 'Cari',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Mencari laporan...'),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            ),

            IconButton(
              tooltip: 'Filter',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Membuka filter...'),
                  ),
                );
              },
              icon: const Icon(Icons.filter_list),
            ),

            const SizedBox(width: 40),

            IconButton(
              tooltip: 'Urutkan',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Mengurutkan laporan...'),
                  ),
                );
              },
              icon: const Icon(Icons.sort),
            ),

            IconButton(
              tooltip: 'Bagikan',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Membagikan laporan...'),
                  ),
                );
              },
              icon: const Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}