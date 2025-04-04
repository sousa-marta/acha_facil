import 'package:flutter/material.dart';

class MedicinesPage extends StatelessWidget {
  const MedicinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicines Page'),
      ),
      body: const Center(
        child: Text('Página de Controle de Remédios'),
      ),
    );
  }
}