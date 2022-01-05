import 'package:flutter/material.dart';
import 'package:mysite/uteis/paleta_cores.dart';

class Tema{
  double arredondamento = 30;
    final ThemeData temaPadrao = ThemeData(
    primaryColor: PaletaCores.corPrimaria,

    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: PaletaCores.corPrimaria,
      secondary: PaletaCores.corFundo,
    ),
  );

  Tema();

}