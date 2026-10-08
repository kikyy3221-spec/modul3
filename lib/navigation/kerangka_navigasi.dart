<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/pengajuan_model.dart';
import '../pages/beranda_page.dart';
import '../pages/layanan_page.dart';
import '../pages/warga_page.dart';
=======

import 'package:flutter/material.dart';

import '../pages/halaman_beranda.dart';
import '../pages/halaman_layanan.dart';
import '../pages/halaman_warga.dart';

import 'app_routes.dart';
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e

class KerangkaNavigasi extends StatefulWidget {
  const KerangkaNavigasi({super.key});

  @override
  State<KerangkaNavigasi> createState() => _KerangkaNavigasiState();
}

class _KerangkaNavigasiState extends State<KerangkaNavigasi> {
<<<<<<< HEAD
  int _indexAktif = 0;

  void _ubahHalaman(int index) {
    setState(() {
      _indexAktif = index;
    });
  }

  void _bukaDrawerRoute(String route) {
    Navigator.pop(context);
    Navigator.pushNamed(context, route);
=======
  int _indeksTerpilih = 0;

  final List<Widget> _halaman = const [
    HalamanBeranda(),
    HalamanLayanan(),
    HalamanWarga(),
  ];

  final List<String> _judul = const [
    'Beranda',
    'Layanan',
    'Warga',
  ];

  void _pilihTujuan(int indeks) {
    setState(() {
      _indeksTerpilih = indeks;
    });
  }

  void _bukaRoute(String route) {
    Navigator.pop(context);

    Navigator.pushNamed(
      context,
      route,
    );
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final lebar = MediaQuery.of(context).size.width;
    final layarLebar = lebar >= 600;

    final halaman = [
      BerandaPage(
        onBukaLayanan: () {
          _ubahHalaman(1);
        },
      ),
      const LayananPage(),
      const WargaPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'NUSANTARA CERDAS',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      drawer: NavigationDrawer(
        selectedIndex: _indexAktif,
        onDestinationSelected: (index) {
          Navigator.pop(context);

          if (index < 3) {
            _ubahHalaman(index);
          }
        },
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 24, 16, 16),
            child: Text(
              'Menu Utama',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
=======
    final bool layarLebar =
        MediaQuery.of(context).size.width >= 600;

    return Scaffold(
      appBar: AppBar(
        title: Text(_judul[_indeksTerpilih]),
        centerTitle: false,
      ),

      drawer: NavigationDrawer(
        selectedIndex: _indeksTerpilih,

        onDestinationSelected: (index) {
          if (index < 3) {
            Navigator.pop(context);

            setState(() {
              _indeksTerpilih = index;
            });
          }
        },

        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
            child: Text(
              'NUSANTARA CERDAS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(28, 0, 16, 10),
            child: Text(
              'Layanan Warga Smart City',
              style: TextStyle(
                fontSize: 13,
              ),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
            ),
          ),

          const NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Beranda'),
          ),

          const NavigationDrawerDestination(
<<<<<<< HEAD
            icon: Icon(Icons.miscellaneous_services_outlined),
            selectedIcon: Icon(Icons.miscellaneous_services),
=======
            icon: Icon(Icons.apps_outlined),
            selectedIcon: Icon(Icons.apps),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
            label: Text('Layanan'),
          ),

          const NavigationDrawerDestination(
<<<<<<< HEAD
            icon: Icon(Icons.people_outline),
            selectedIcon: Icon(Icons.people),
=======
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
            label: Text('Warga'),
          ),

          const Padding(
<<<<<<< HEAD
            padding: EdgeInsets.fromLTRB(28, 24, 16, 8),
            child: Text(
              'Menu Pendukung',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan Kota'),
            onTap: () {
              _bukaDrawerRoute('/pengaturan');
=======
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Divider(),
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Pengaturan Kota'),
            onTap: () {
              _bukaRoute(AppRoutes.pengaturan);
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
            },
          ),

          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Tentang Aplikasi'),
            onTap: () {
<<<<<<< HEAD
              _bukaDrawerRoute('/tentang');
=======
              _bukaRoute(AppRoutes.tentang);
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Keluar'),
            onTap: () {
              Navigator.pop(context);

              ScaffoldMessenger.of(context).showSnackBar(
<<<<<<< HEAD
                const SnackBar(content: Text('Menu Keluar dipilih')),
=======
                const SnackBar(
                  content: Text(
                    'Menu Keluar dipilih.',
                  ),
                ),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
              );
            },
          ),
        ],
      ),

      body: Row(
        children: [
          if (layarLebar)
            NavigationRail(
<<<<<<< HEAD
              selectedIndex: _indexAktif,
              onDestinationSelected: _ubahHalaman,
              labelType: NavigationRailLabelType.all,
=======
              selectedIndex: _indeksTerpilih,
              onDestinationSelected: _pilihTujuan,
              labelType: NavigationRailLabelType.all,

              leading: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),

                child: Builder(
                  builder: (context) {
                    return IconButton(
                      tooltip: 'Menu',

                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },

                      icon: const Icon(Icons.menu),
                    );
                  },
                ),
              ),

>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Beranda'),
                ),
<<<<<<< HEAD
                NavigationRailDestination(
                  icon: Icon(Icons.miscellaneous_services_outlined),
                  selectedIcon: Icon(Icons.miscellaneous_services),
                  label: Text('Layanan'),
                ),
                NavigationRailDestination(
                  icon: const IkonWargaDenganBadge(terpilih: false),
                  selectedIcon: const IkonWargaDenganBadge(terpilih: true),
                  label: const Text('Warga'),
=======

                NavigationRailDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps),
                  label: Text('Layanan'),
                ),

                NavigationRailDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Warga'),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
                ),
              ],
            ),

<<<<<<< HEAD
          Expanded(child: halaman[_indexAktif]),
=======
          Expanded(
            child: _halaman[_indeksTerpilih],
          ),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
        ],
      ),

      bottomNavigationBar: layarLebar
          ? null
          : NavigationBar(
<<<<<<< HEAD
              selectedIndex: _indexAktif,
              onDestinationSelected: _ubahHalaman,
=======
              selectedIndex: _indeksTerpilih,
              onDestinationSelected: _pilihTujuan,

>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Beranda',
                ),
<<<<<<< HEAD
                NavigationDestination(
                  icon: Icon(Icons.miscellaneous_services_outlined),
                  selectedIcon: Icon(Icons.miscellaneous_services),
                  label: 'Layanan',
                ),
                NavigationDestination(
                  icon: const IkonWargaDenganBadge(terpilih: false),
                  selectedIcon: const IkonWargaDenganBadge(terpilih: true),
=======

                NavigationDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps),
                  label: 'Layanan',
                ),

                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
                  label: 'Warga',
                ),
              ],
            ),
    );
  }
}
<<<<<<< HEAD

class IkonWargaDenganBadge extends StatelessWidget {
  const IkonWargaDenganBadge({super.key, required this.terpilih});

  final bool terpilih;

  @override
  Widget build(BuildContext context) {
    final total = context.select<PengajuanModel, int>(
      (model) => model.totalPengajuan,
    );

    return Badge(
      isLabelVisible: total > 0,
      label: Text('$total'),
      child: Icon(terpilih ? Icons.people : Icons.people_outline),
    );
  }
}
=======
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
