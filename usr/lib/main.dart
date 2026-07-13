import 'package:flutter/material.dart';

void main() {
  runApp(const ClassicCarApp());
}

class ClassicCarApp extends StatelessWidget {
  const ClassicCarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classic Motors',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2C3E50), // Classic dark blue/grey
          primary: const Color(0xFF2C3E50),
          secondary: const Color(0xFFD4AF37), // Metallic gold accent
          background: const Color(0xFFF8F9FA), // Clean off-white
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        fontFamily: 'Georgia', // Classic serif font
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF2C3E50),
          elevation: 0,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClassicShowroomScreen(),
      },
    );
  }
}

class ClassicShowroomScreen extends StatelessWidget {
  const ClassicShowroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CLASSIC MOTORS',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Featured Collection',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C3E50),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Timeless elegance, beautifully preserved.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 32),
                _buildCarCard(
                  context,
                  title: '1961 Berlinetta',
                  subtitle: 'Italian Heritage',
                  description: 'A masterpiece of mid-century automotive design, featuring flowing lines and a powerful V12 engine.',
                  icon: Icons.directions_car,
                ),
                const SizedBox(height: 24),
                _buildCarCard(
                  context,
                  title: '1955 Speedster',
                  subtitle: 'German Engineering',
                  description: 'The epitome of pure driving pleasure. Lightweight, agile, and unmistakably classic.',
                  icon: Icons.airport_shuttle,
                ),
                const SizedBox(height: 24),
                _buildCarCard(
                  context,
                  title: '1967 Roadster',
                  subtitle: 'British Elegance',
                  description: 'A stunning example of classic British motoring, combining luxury with sporting performance.',
                  icon: Icons.time_to_leave,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCarCard(BuildContext context, {
    required String title,
    required String subtitle,
    required String description,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: Colors.black.withOpacity(0.05),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C3E50).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    color: const Color(0xFF2C3E50),
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          fontFamily: 'sans-serif', // Contrast with serif
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF2C3E50),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'VIEW DETAILS',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 18),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
