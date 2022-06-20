import 'package:fitme/style/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        children: [
          const Text(
            "Hi",
            style: Styles.ts18Medium,
          ),
          const SizedBox(height: 8),
          const Text(
            "Sagar",
            style: Styles.ts24Bold,
          ),
          Container()
        ],
      ),
    );
  }
}
