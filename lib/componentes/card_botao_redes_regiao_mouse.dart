import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/dados/dados.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';


class CardBotaoRedesRegiaoMouse extends StatefulWidget {

  const CardBotaoRedesRegiaoMouse({Key? key}) : super(key: key);


  @override
  _CardBotaoRedesRegiaoMouseState createState() => _CardBotaoRedesRegiaoMouseState();
}

class _CardBotaoRedesRegiaoMouseState extends State<CardBotaoRedesRegiaoMouse> {

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

  //final String urlImagem = "https://img.icons8.com/ios-filled/50/ffffff/facebook-f.png";

  const ImagemRede({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Dados listaUrl = Dados();

    return Row(

      children: [
        Container(
          // color: Colors.red,
          // child: ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: listaUrl.listaUrls.length,
          //     itemBuilder: (context, indice){
          //            return CachedNetworkImage(
          //              imageUrl: listaUrl.listaUrls[indice],
          //              width: Tamanho.larguralementosappbar(context),
          //              height: Tamanho.alturaelementosappbar(context),
          //            );
          //     }
          //
          // ),
        ),


      ],
      //),
    );
  }
}

