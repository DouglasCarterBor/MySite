import 'package:flutter/material.dart';
import 'package:mysite/telas/home.dart';
import 'package:mysite/telas/principal.dart';

class Rotas{

  static const String inicio = "/telas/home";
  static const String principal = "/telas/principal";

  static Route<dynamic> gerarRotas(RouteSettings settings){

    final args = settings.arguments;

    switch(settings.name){
      case inicio :
        return MaterialPageRoute(
            builder: (_) => const Home()
        );
        case principal :
        return MaterialPageRoute(
            builder: (_) => const Principal()
        );

  }
  return _erroRota();

}

  static Route <dynamic> _erroRota(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: const Text("Tela não encontrada!"),),
        body: const Center(
          child: Text("Tela não encontrada"),
        ),
      );
    });
  }
}