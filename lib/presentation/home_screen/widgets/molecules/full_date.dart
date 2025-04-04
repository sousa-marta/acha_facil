import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FullDate extends StatelessWidget {
  const FullDate({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat('EEEE', 'pt_BR').format(now);
    String dayOfWeekText = 'Hoje é $dayOfWeek';
    String fullDateText =
        DateFormat('d \'de\' MMMM \'de\' y', 'pt_BR').format(now);

    TextStyle style = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          dayOfWeekText,
          style: style,
        ),
        Text(
          fullDateText,
          style: style,
        ),
      ],
    );
  }
}
