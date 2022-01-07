import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mysite/componentes/icone_rede.dart';
import 'package:mysite/uteis/tamanho.dart';

class BotaoRede2 extends StatelessWidget {

  final List<IconeRede> iconerede;

  const BotaoRede2({Key? key, required this.iconerede}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Tamanho.alturaappbar(context),
      //color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: iconerede.length,
          itemBuilder: (context, indice) {
            IconeRede iconerede2 = iconerede[indice];
            return Row(
              children: [
                Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
                Image.network(iconerede2.urlImagem,
                width: Tamanho.larguralementosappbar(context),
                height: Tamanho.alturaelementosappbar(context))
              ],
            );
          }

    ),
    );
  }
  }
