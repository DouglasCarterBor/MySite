import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';


class RegiaoMouse extends StatefulWidget {

  const RegiaoMouse({Key? key,}) : super(key: key);


  @override
  _RegiaoMouseState createState() => _RegiaoMouseState();
}

class _RegiaoMouseState extends State<RegiaoMouse> {

  bool acionado = false;
  String? urlImagem;

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
        const ImagemRede(),
        MouseRegion(
          onEnter: _incrementEnter,
          onExit: _incrementExit,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: Tamanho.larguralementosappbar(context),
              height: Tamanho.alturaelementosappbar(context),
              decoration: acionado ? BoxDecoration(
                gradient: PaletaCores.degradeEstoria,
                borderRadius: BorderRadius.circular(12),
              ) : null,
            ),
          ),
        ),
      ],
    );
  }
}

class ImagemRede extends StatelessWidget {

  final String urlImagem = "https://img.icons8.com/ios-filled/50/ffffff/facebook-f.png";

  const ImagemRede({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //const Padding(padding: EdgeInsets.all(3)),
        CachedNetworkImage(
          imageUrl: urlImagem,
          width: Tamanho.larguralementosappbar(context),
          height: Tamanho.alturaelementosappbar(context),
        ),
      ],
      //),
    );
  }
}

