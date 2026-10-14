import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halaman About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // 1. ElevatedButton (Tombol Kembali utama)
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman sebelumnya (HomePage)
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
            const SizedBox(height: 12),

            // 2. FilledButton tambahan
            FilledButton(
              onPressed: () {
                print('FilledButton diklik');
              },
              child: const Text('Filled Button'),
            ),
            const SizedBox(height: 12),

            // 3. OutlinedButton tambahan
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton diklik');
              },
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 12),

            // 4. TextButton tambahan
            TextButton(
              onPressed: () {
                print('TextButton diklik');
              },
              child: const Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}