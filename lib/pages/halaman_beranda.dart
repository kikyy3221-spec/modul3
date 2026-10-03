import 'package:flutter/material.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_city,
                    size: 55,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Nusantara Cerdas Mobile',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Aplikasi layanan warga untuk mendukung '
                    'penerapan Smart City.',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Enam Pilar Smart City',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,

            children: const [
              _PilarCard(
                icon: Icons.people,
                title: 'Smart Society',
              ),

              _PilarCard(
                icon: Icons.account_balance,
                title: 'Smart Governance',
              ),

              _PilarCard(
                icon: Icons.business,
                title: 'Smart Economy',
              ),

              _PilarCard(
                icon: Icons.eco,
                title: 'Smart Environment',
              ),

              _PilarCard(
                icon: Icons.school,
                title: 'Smart Living',
              ),

              _PilarCard(
                icon: Icons.lightbulb,
                title: 'Smart Branding',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PilarCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _PilarCard({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              icon,
              size: 38,
            ),

            const SizedBox(height: 10),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}