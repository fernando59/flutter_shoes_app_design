import 'package:flutter/material.dart';

import '../widgets/index.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(title: 'For you'),
    );
  }
}
