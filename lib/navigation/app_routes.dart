import 'package:flutter/material.dart';

import '../pages/detail_layanan.dart';
import '../pages/pengaturan_kota.dart';
import '../pages/tentang_aplikasi.dart';
import '../pages/route_tidak_dikenal.dart';
import '../pages/riwayat_laporan.dart';
import 'kerangka_navigasi.dart';

class AppRoutes {
  static const String beranda = '/';
  static const String detailLayanan = '/detail-layanan';
  static const String pengaturan = '/pengaturan';
  static const String tentang = '/tentang';
  static const String riwayatLaporan = '/riwayat-laporan';

  static Map<String, WidgetBuilder> daftarRoute() {
    return {
      beranda: (context) => const KerangkaNavigasi(),
      pengaturan: (context) => const PengaturanKotaPage(),
      tentang: (context) => const TentangAplikasiPage(),
      riwayatLaporan: (context) => const RiwayatLaporanPage(),
    };
  }

  static Route<dynamic>? bentukRoute(RouteSettings settings) {
    if (settings.name == detailLayanan) {
      final arguments =
          settings.arguments as Map<String, dynamic>? ?? {};

      return MaterialPageRoute(
        builder: (context) => DetailLayananPage(
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

  static Route<dynamic> routeTidakDikenal(
    RouteSettings settings,
  ) {
    return MaterialPageRoute(
      builder: (context) => RouteTidakDikenalPage(
        namaRoute: settings.name ?? 'Tidak diketahui',
      ),
    );
  }
}