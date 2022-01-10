import 'package:flutter/material.dart';

abstract class Acionamento extends StatefulWidget{

  bool acionado = false;

  Acionamento(this.acionado);

  void incrementEnter(PointerEvent details) {
      acionado = true;
  }

  void incrementExit(PointerEvent details) {
      acionado = false;
  }

}