import 'package:flutter/foundation.dart';

class FavoritModel extends ChangeNotifier {
<<<<<<< HEAD
  final Set<String> _layananFavorit = {};

  Set<String> get layananFavorit => _layananFavorit;

  bool isFavorit(String namaLayanan) {
    return _layananFavorit.contains(namaLayanan);
  }

  void tandai(String namaLayanan) {
    _layananFavorit.add(namaLayanan);
=======
  final Set<String> _favorit = {};

  bool isFavorit(String namaLayanan) {
    return _favorit.contains(namaLayanan);
  }

  void tandai(String namaLayanan) {
    _favorit.add(namaLayanan);
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
    notifyListeners();
  }

  void batalTandai(String namaLayanan) {
<<<<<<< HEAD
    _layananFavorit.remove(namaLayanan);
    notifyListeners();
  }
=======
    _favorit.remove(namaLayanan);
    notifyListeners();
  }

  Set<String> get favorit => _favorit;
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
}