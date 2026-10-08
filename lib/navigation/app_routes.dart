import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../pages/detail_layanan.dart';
import '../pages/pengaturan_kota.dart';
import '../pages/tentang_aplikasi.dart';
import '../pages/route_tidak_dikenal.dart';
import '../pages/riwayat_laporan.dart';
=======
import '../pages/halaman_detail_layanan.dart';
import '../pages/halaman_pengaturan.dart';
import '../pages/halaman_tentang.dart';
import '../pages/halaman_riwayat_laporan.dart';
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
import 'kerangka_navigasi.dart';

class AppRoutes {
  static const String beranda = '/';
  static const String detailLayanan = '/detail-layanan';
  static const String pengaturan = '/pengaturan';
  static const String tentang = '/tentang';
<<<<<<< HEAD
  static const String riwayatLaporan = '/riwayat-laporan';

  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),
      pengaturan: (context) => const PengaturanKotaPage(),
      tentang: (context) => const TentangAplikasiPage(),
      riwayatLaporan: (context) => const RiwayatLaporanPage(),
    };
  }

=======
  static const String riwayat = '/riwayat';
  static const String routeSalah = '/route-salah';

  // Route yang tidak membutuhkan arguments
  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),

      pengaturan: (context) => const HalamanPengaturan(),

      tentang: (context) => const HalamanTentang(),

      riwayat: (context) => const HalamanRiwayatLaporan(),
    };
  }

  // Route yang membutuhkan arguments
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
  static Route<dynamic>? bentukRoute(RouteSettings settings) {
    if (settings.name == detailLayanan) {
      final arguments =
          settings.arguments as Map<String, dynamic>? ?? {};

      return MaterialPageRoute(
<<<<<<< HEAD
        builder: (context) => DetailLayananPage(
=======
        builder: (context) => HalamanDetailLayanan(
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
          nama: arguments['nama'] ?? 'Layanan',
          dinas: arguments['dinas'] ?? 'Dinas terkait',
          jam: arguments['jam'] ?? '08.00 - 16.00',
          keterangan:
              arguments['keterangan'] ?? 'Tidak ada keterangan.',
        ),
      );
    }

    return null;
  }

<<<<<<< HEAD
=======
  // Route tidak ditemukan
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
  static Route<dynamic> routeTidakDikenal(
    RouteSettings settings,
  ) {
    return MaterialPageRoute(
<<<<<<< HEAD
      builder: (context) => RouteTidakDikenalPage(
        namaRoute: settings.name ?? 'Tidak diketahui',
=======
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Route Tidak Ditemukan'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 80,
                  color: Colors.red,
                ),

                const SizedBox(height: 20),

                const Text(
                  'Halaman Tidak Ditemukan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  'Route "${settings.name}" belum terdaftar.',
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 25),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.beranda,
                      (route) => false,
                    );
                  },
                  icon: const Icon(Icons.home),
                  label: const Text('Kembali ke Beranda'),
                ),
              ],
            ),
          ),
        ),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
      ),
    );
  }
}