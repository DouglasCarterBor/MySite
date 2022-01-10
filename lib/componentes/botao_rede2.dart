import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mysite/modelos/icone_rede.dart';
import 'package:mysite/dados/dados.dart';
import 'package:mysite/rotas.dart';
import 'package:mysite/uteis/acionamento.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoRede2 extends StatefulWidget {
  const BotaoRede2({Key? key}) : super(key: key);

  @override
  _BotaoRede2 createState() => _BotaoRede2();
}

//StatelessWidget {

class _BotaoRede2 extends State<BotaoRede2> {

  bool acionado = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      acionado = true;
    });
  }

  _incrementExit(PointerEvent details) {
    setState(() {
      acionado = false;
    });
  }
  //final List<IconeRede> iconerede;

  //const BotaoRede2({Key? key, required this.iconerede}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      height: Tamanho.alturaappbar(context),
      //color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,//iconerede.length,
          itemBuilder: (context, indice) {
            IconeRede iconerede2 = iconerede[indice];
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                  Row(
                    children: [
                    Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
                    Image.network(iconerede2.urlImagem,
                    width: Tamanho.larguralementosappbar(context),
                    height: Tamanho.alturaelementosappbar(context)),
                ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
                    GestureDetector(
                      onTap: () async {
                        if (!await launch(iconerede2.urlRede)) throw 'Não foi possível encontrar ${iconerede2.urlRede}';
                        },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (PointerEvent details) {
                          setState(() {
                            iconerede2.setado = true;
                          });
                          },
                        onExit: (PointerEvent details) {
                          setState(() {
                            iconerede2.setado = false;
                          });
                        },
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: Tamanho.larguralementosappbar(context),
                            height: Tamanho.alturaelementosappbar(context),
                            decoration: iconerede2.setado ? BoxDecoration(
                              gradient: PaletaCores.degradeEstoria,
                              borderRadius: BorderRadius.circular(0),
                            ) : null,
                          ),
                        ),
                      ),
                    ),
            ],
                ),

              ],
            );
          }

    ),
    );
  }
  }
