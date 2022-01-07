import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mysite/uteis/tamanho.dart';

class BotaoRede extends StatelessWidget {

  final List<String> urls;
  final int indiceBotaoSelecionado;
  final Function(int) onTap;


  const BotaoRede({Key? key, required this.urls, required this.indiceBotaoSelecionado, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: urls.length,
          itemBuilder: (context, indice){
            return CachedNetworkImage(
              imageUrl: urls[indice],
              width: Tamanho.larguralementosappbar(context),
              height: Tamanho.alturaelementosappbar(context),
            );
          }

      ),
    );
  }
}
