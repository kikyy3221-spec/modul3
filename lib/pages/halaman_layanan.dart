import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorit_model.dart';
import '../navigation/app_routes.dart';

class HalamanLayanan extends StatelessWidget {
  const HalamanLayanan({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const Material(
            child: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.description),
                  text: 'Perizinan',
                ),
                Tab(
                  icon: Icon(Icons.local_hospital),
                  text: 'Kesehatan',
                ),
                Tab(
                  icon: Icon(Icons.directions_bus),
                  text: 'Transportasi',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                _daftarLayanan(
                  context,
                  [
                    {
                      'nama': 'Izin Usaha',
                      'dinas': 'Dinas Penanaman Modal',
                      'jam': '08.00 - 16.00',
                      'keterangan':
                          'Layanan pengajuan izin usaha masyarakat.',
                    },
                    {
                      'nama': 'Izin Bangunan',
                      'dinas': 'Dinas PUPR',
                      'jam': '08.00 - 16.00',
                      'keterangan':
                          'Pengurusan izin mendirikan bangunan.',
                    },
                    {
                      'nama': 'Izin Keramaian',
                      'dinas': 'Dinas Pelayanan Publik',
                      'jam': '08.00 - 15.00',
                      'keterangan':
                          'Pengajuan izin untuk kegiatan masyarakat.',
                    },
                  ],
                ),
                _daftarLayanan(
                  context,
                  [
                    {
                      'nama': 'Puskesmas',
                      'dinas': 'Dinas Kesehatan',
                      'jam': '07.30 - 16.00',
                      'keterangan':
                          'Informasi dan pelayanan kesehatan masyarakat.',
                    },
                    {
                      'nama': 'Ambulans',
                      'dinas': 'Dinas Kesehatan',
                      'jam': '24 Jam',
                      'keterangan':
                          'Layanan bantuan ambulans untuk keadaan darurat.',
                    },
                    {
                      'nama': 'Vaksinasi',
                      'dinas': 'Dinas Kesehatan',
                      'jam': '08.00 - 15.00',
                      'keterangan':
                          'Informasi layanan vaksinasi masyarakat.',
                    },
                  ],
                ),
                _daftarLayanan(
                  context,
                  [
                    {
                      'nama': 'Transportasi Umum',
                      'dinas': 'Dinas Perhubungan',
                      'jam': '05.00 - 22.00',
                      'keterangan':
                          'Informasi mengenai transportasi umum.',
                    },
                    {
                      'nama': 'Parkir Kota',
                      'dinas': 'Dinas Perhubungan',
                      'jam': '08.00 - 22.00',
                      'keterangan':
                          'Informasi lokasi dan layanan parkir kota.',
                    },
                    {
                      'nama': 'Bus Kota',
                      'dinas': 'Dinas Perhubungan',
                      'jam': '05.00 - 21.00',
                      'keterangan':
                          'Informasi rute dan jadwal bus kota.',
                    },
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _daftarLayanan(
    BuildContext context,
    List<Map<String, String>> data,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final layanan = data[index];
        final namaLayanan = layanan['nama']!;

        // watch digunakan agar widget ikut berubah
        // ketika status favorit berubah.
        final favorit = context.watch<FavoritModel>();
        final isFavorit = favorit.isFavorit(namaLayanan);

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.miscellaneous_services),
            ),
            title: Text(
              namaLayanan,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '${layanan['dinas']}\n${layanan['jam']}',
            ),
            isThreeLine: true,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorit
                        ? Icons.star
                        : Icons.star_border,
                  ),
                  onPressed: () {
                    // read digunakan untuk menjalankan aksi.
                    if (isFavorit) {
                      context
                          .read<FavoritModel>()
                          .batalTandai(namaLayanan);
                    } else {
                      context
                          .read<FavoritModel>()
                          .tandai(namaLayanan);
                    }
                  },
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ],
            ),
            onTap: () async {
              final hasil = await Navigator.pushNamed(
                context,
                AppRoutes.detailLayanan,
                arguments: {
                  'nama': layanan['nama'],
                  'dinas': layanan['dinas'],
                  'jam': layanan['jam'],
                  'keterangan': layanan['keterangan'],
                },
              );

              if (!context.mounted) return;

              if (hasil is String) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(hasil),
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}