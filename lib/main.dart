import 'package:flutter/material.dart';
import 'package:mysite/rotas.dart';
import 'package:mysite/telas/principal.dart';
import 'modelos/theme.dart';

void main(){

  //String urlInicial = Rotas.inicio;

  Tema tema = Tema();
  runApp(
        MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Douglas",
        theme: tema.temaPadrao,
          //initialRoute: urlInicial,
          //onGenerateRoute: Rotas.gerarRotas,
          home: const Principal(),
  ));
}