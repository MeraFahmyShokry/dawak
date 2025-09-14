import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:flutter/material.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No Network'),
      ),  
    );
  }
}
