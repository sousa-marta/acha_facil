import 'package:acha_facil/presentation/home_screen/widgets/molecules/full_date.dart';
import 'package:acha_facil/presentation/home_screen/widgets/molecules/greetings.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Greetings(),
        FullDate(),
        SizedBox(height: 8.0),
      ],
    );
  }
}