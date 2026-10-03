
import 'package:flutter/material.dart';

import '../pages/halaman_beranda.dart';
import '../pages/halaman_layanan.dart';
import '../pages/halaman_warga.dart';

import 'app_routes.dart';

class KerangkaNavigasi extends StatefulWidget {
  const KerangkaNavigasi({super.key});

  @override
  State<KerangkaNavigasi> createState() => _KerangkaNavigasiState();
}

class _KerangkaNavigasiState extends State<KerangkaNavigasi> {
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
  }

  @override
  Widget build(BuildContext context) {
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
            ),
          ),

          const NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Beranda'),
          ),

          const NavigationDrawerDestination(
            icon: Icon(Icons.apps_outlined),
            selectedIcon: Icon(Icons.apps),
            label: Text('Layanan'),
          ),

          const NavigationDrawerDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: Text('Warga'),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Divider(),
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Pengaturan Kota'),
            onTap: () {
              _bukaRoute(AppRoutes.pengaturan);
            },
          ),

          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Tentang Aplikasi'),
            onTap: () {
              _bukaRoute(AppRoutes.tentang);
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Keluar'),
            onTap: () {
              Navigator.pop(context);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Menu Keluar dipilih.',
                  ),
                ),
              );
            },
          ),
        ],
      ),

      body: Row(
        children: [
          if (layarLebar)
            NavigationRail(
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

              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Beranda'),
                ),

                NavigationRailDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps),
                  label: Text('Layanan'),
                ),

                NavigationRailDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Warga'),
                ),
              ],
            ),

          Expanded(
            child: _halaman[_indeksTerpilih],
          ),
        ],
      ),

      bottomNavigationBar: layarLebar
          ? null
          : NavigationBar(
              selectedIndex: _indeksTerpilih,
              onDestinationSelected: _pilihTujuan,

              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Beranda',
                ),

                NavigationDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps),
                  label: 'Layanan',
                ),

                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: 'Warga',
                ),
              ],
            ),
    );
  }
}
