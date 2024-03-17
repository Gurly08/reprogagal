import 'package:flutter/material.dart';

class ModelPuberepro{
  ModelPuberepro(
    this.imagePath, 
    this.subTheme, this.progress, 
    this.materials,
    this.widget,  
  );

  final String imagePath;
  final String subTheme;
  final List<int> progress;
  final String materials;
  final Widget Function() widget;

}