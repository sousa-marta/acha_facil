import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FullDate extends StatelessWidget {
  const FullDate({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(now);

    return Text(
      formattedDate,
      style: const TextStyle(fontSize: 20),
    );
  }
}
