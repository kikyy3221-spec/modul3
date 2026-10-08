import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD

import 'models/favorit_model.dart';
import 'models/pengajuan_model.dart';
import 'navigation/app_routes.dart';


=======
import 'package:tugas2/models/favorit_model.dart';
import 'package:tugas2/models/pengajuan_model.dart';

import 'navigation/app_routes.dart';

>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
<<<<<<< HEAD
          create: (_) => FavoritModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => PengajuanModel(),
        ),
      ],
      child: const NusantaraCerdasApp(),
    ),
  );
}

class NusantaraCerdasApp extends StatelessWidget {
  const NusantaraCerdasApp({super.key});
=======
          create: (context) => FavoritModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => PengajuanModel(),
        ),
      ],
      child: const AplikasiNusantaraCerdas(),
    ),
  );
}
class AplikasiNusantaraCerdas extends StatelessWidget {
  const AplikasiNusantaraCerdas({super.key});
>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      title: 'Nusantara Cerdas',
      initialRoute: AppRoutes.beranda,
      routes: AppRoutes.daftarRoute(),
      onGenerateRoute: AppRoutes.bentukRoute,
=======
      title: 'Nusantara Cerdas Mobile',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),

      initialRoute: AppRoutes.beranda,

      routes: AppRoutes.daftarRoute(),

      onGenerateRoute: AppRoutes.bentukRoute,

>>>>>>> 586a30aa6218ae6982967210637674b2eae40b9e
      onUnknownRoute: AppRoutes.routeTidakDikenal,
    );
  }
}