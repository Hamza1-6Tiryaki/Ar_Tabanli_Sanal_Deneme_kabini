import 'package:flutter/material.dart';

class KameraEkrani extends StatelessWidget {
  const KameraEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Kamera'),
      ),
      body: const SizedBox.expand(),
    );
  }
}
