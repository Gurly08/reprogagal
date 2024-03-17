import 'package:reproed/models/modelpubereproman/model_cardpuberepro.dart';
import 'package:reproed/pages/puberreproman.dart/subtemafour/subtemafour.dart';
import 'package:reproed/pages/puberreproman.dart/subtemaone/subtemaone.dart';
import 'package:reproed/pages/puberreproman.dart/subtemathree/subtemathree.dart';
import 'package:reproed/pages/puberreproman.dart/subtematwo/subtematwo.dart';

final cardpuberepro = [
  ModelPuberepro(
    'assets/images/sub1man.png', // imagePath
    'Sub Tema 1', // subTheme
    [0, 1, 2, 3], // progress
    'Definisi Pubertas', // materials
    () => const Subtemaone(), // widget
  ),
  ModelPuberepro(
    'assets/images/sub2man.png', // imagePath
    'Sub Tema 2', // subTheme
    [0, 1, 2, 3], // progress
    'Tahapan Pubertas', // materials
    () => const Subtematwo(),//sementara
  ),
  ModelPuberepro(
    'assets/images/sub3man.png', // imagePath
    'Sub Tema 3', // subTheme
    [0, 1, 2, 3], // progress
    'Dunia Pertemanan Dimasa Remaja', // materials
    () => const Subtemathree(),//sementara
  ),
  ModelPuberepro(
    'assets/images/sub4man.png', // imagePath
    'Sub Tema 4', // subTheme
    [0, 1, 2, 3], // progress
    'Perlukah Edukasi ?', // materials
    () => const Subtemafour(),//sementara
  ),
];
