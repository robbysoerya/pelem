import 'package:flutter/material.dart';

class IntroduceSection extends StatelessWidget {
  const IntroduceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello! I am a self motivated, passionate Mobile Developer based in Depok. Always open to new possibilities and challenges.',
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
    );
  }
}
