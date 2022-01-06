import 'package:flutter/material.dart';
import 'package:mysite/telas/appbargeral.dart';

//TENTAR TER SEMPRE DISPONÍVEL OS DADOS DA TELA PARA USO EM TODOS OS ARQUIVOS

//http://www.macoratti.net/20/03/flut_mediaq1.htm

class Tamanho {

  static double alturaappbar(BuildContext context){
    double x;
    if(MediaQuery.of(context).size.height < 50){
      x = 50;
    } else {
      x = MediaQuery.of(context).size.height / 11.5;
    }
      return x;
  }

  static double larguraappbar(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double alturaelementosappbar(BuildContext context){
    return alturaappbar(context) * 0.5;
  }

  static double larguralementosappbar(BuildContext context){
    return larguraappbar(context) / 35;
  }
  static double espacoentreredes(BuildContext context){
    return larguraappbar(context) / 100;
  }
  static double larguralogo(BuildContext context){
    return MediaQuery.of(context).size.width / 10;
  }
  static double alturalogo(BuildContext context){
    return alturaappbar(context);
  }
  static double tamanholetras(BuildContext context){
    return alturaappbar(context) / 5.2;
  }




}

