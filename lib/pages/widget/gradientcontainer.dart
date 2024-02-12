import 'package:flutter/material.dart';


//Cara Ke 2 dalam intance variabel pada gradientcontainer
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple,
            Colors.blue,
          ], // Gradient colors
        ),
      ),
    );
  }
}
