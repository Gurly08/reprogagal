import 'package:flutter/material.dart';

var startAligment = Alignment.topRight;
var endAligment = Alignment.bottomLeft;

//Cara Ke 2 dalam intance variabel pada gradientcontainer
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override 
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
    );
  }
}
