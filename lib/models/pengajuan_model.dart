import 'package:flutter/foundation.dart';

class PengajuanModel extends ChangeNotifier {
  final List<String> _pengajuan = [];

  List<String> get pengajuan => _pengajuan;

  int get totalPengajuan => _pengajuan.length;

  void tambahPengajuan(String namaLayanan) {
    _pengajuan.add(namaLayanan);
    notifyListeners();
  }

  void hapusPengajuan(String namaLayanan) {
    _pengajuan.remove(namaLayanan);
    notifyListeners();
  }
}