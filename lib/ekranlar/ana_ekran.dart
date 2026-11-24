import 'package:flutter/material.dart';
import 'kamera_ekrani.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Sanal Giyinme Odası'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const KameraEkrani(),
              ),
            );
          },
          child: const Text('Kamerayı aç'),
        ),
      ),
    );
  }
}
