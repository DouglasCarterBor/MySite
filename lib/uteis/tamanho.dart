import 'package:flutter/material.dart';
import 'package:mysite/telas/appbargeral.dart';

//TENTAR TER SEMPRE DISPONÍVEL OS DADOS DA TELA PARA USO EM TODOS OS ARQUIVOS

//http://www.macoratti.net/20/03/flut_mediaq1.htm

class Tamanho {
  static double alturaappbar(BuildContext context) {
    double x;
    if (MediaQuery.of(context).size.height < 300) {
      x = 50;
    } else {
      x = 80;
    }
    return x;
  }

  static double larguraappbar(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double alturaelementosappbar(BuildContext context) {
    return alturaappbar(context) * 0.6;
  }

  static double larguralementosappbar(BuildContext context) {
    return larguraappbar(context) / 35;
  }

  static double espacoentreredes(BuildContext context) {
    return larguraappbar(context) / 90;
  }

  static double larguralogo(BuildContext context) {
    return MediaQuery.of(context).size.width / 10;
  }

  static double alturalogo(BuildContext context) {
    return alturaappbar(context);
  }

  static double tamanholetras(BuildContext context) {
    return alturaappbar(context) * larguraappbar(context) / 6000;
  }

  static double largurahome(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double alturahome(BuildContext context) {
    return MediaQuery.of(context).size.height - alturaappbar(context);
  }
}
