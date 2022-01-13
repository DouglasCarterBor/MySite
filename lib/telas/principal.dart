import 'package:flutter/material.dart';
import 'package:mysite/telas/appbargeral.dart';
import 'package:mysite/telas/home.dart';
import 'package:mysite/uteis/tamanho.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  bool opcoesAtivas = false;

  @override
  Widget build(BuildContext context) {

    MediaQueryData deviceInfo = MediaQuery.of(context);
    double alturaappbar = deviceInfo.size.height / 12;
    double largurappbar = deviceInfo.size.width;

    return DefaultTabController(length: 1,
      child: Scaffold(
        appBar: PreferredSize(child: const AppBarGeral(),
          preferredSize: Size(Tamanho.larguraappbar(context), Tamanho.alturaappbar(context))),
        body: const Home(),
    ),
    );
  }
}
