import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';

import '../rotas.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {

  bool acionado = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      acionado = true;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      acionado = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //const Padding(padding: EdgeInsets.all(3)),
            CachedNetworkImage(
              imageUrl: "https://img.icons8.com/ios-filled/50/ffffff/dymo-connect.png",
              width: Tamanho.larguralogo(context),
              height: Tamanho.alturalogo(context),
            ),
          ],
          //),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context, Rotas.inicio);
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: _incrementEnter,
            onExit: _incrementExit,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: Tamanho.larguralogo(context),
                height: Tamanho.alturalogo(context),
                decoration: acionado ? BoxDecoration(
                  gradient: PaletaCores.degradeEstoria,
                  borderRadius: BorderRadius.circular(12),
                ) : null,
              ),
            ),
          ),
        ),
      ],
    );
      
      


  }
}

