import 'package:flutter/material.dart';
import 'package:mysite/telas/appbargeral.dart';
import 'package:mysite/telas/home.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  bool opcoesAtivas = false;

  @override
  Widget build(BuildContext context) {

    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(length: 1,
      child: Scaffold(
      appBar: PreferredSize(child: const AppBarGeral(),
          preferredSize: Size(tamanho.width, 65)),
      body: const Home(),
    ),
    );
  }
}
