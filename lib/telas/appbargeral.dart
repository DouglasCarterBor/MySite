import 'package:flutter/material.dart';
import 'package:mysite/componentes/botao_rede2.dart';
import 'package:mysite/componentes/botoes_direita_superior.dart';
import 'package:mysite/componentes/botoes_meio_appbar.dart';
import 'package:mysite/componentes/botoes_redes.dart';
import 'package:mysite/componentes/logo.dart';
import 'package:mysite/dados/dados.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/responsivo.dart';
import 'package:mysite/uteis/tamanho.dart';

class AppBarGeral extends StatelessWidget {
  const AppBarGeral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsivo.isMobile(context);
    return Container(
      padding: const EdgeInsets.all(2),
      height: Tamanho.alturaappbar(context),
      decoration:
          const BoxDecoration(color: PaletaCores.corFundoBarra, boxShadow: [
        BoxShadow(color: Colors.black54, offset: Offset(0, 2), blurRadius: 4),
      ]),
      child: Row(
        children: [
          const Expanded(
            flex: 5,
            child: Logo(),
            // child: Text('Douglas',
            //   style: TextStyle(
            //     color: PaletaCores.corFundoBarra,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 32,
            //     letterSpacing: -1.2,
            //   ),
            // ),
          ),
          isMobile
              ? Container()
              : const Expanded(
                  flex: 20,
                  child: BotoesMeioAppbar(),
                ),
          isMobile
              ? Expanded(child: Container())
              : const Expanded(
                  flex: 15,
                  child: BotaoRede2(), //iconerede: iconerede,),
                  //child: BotoesRedes(),
                ),
          isMobile
              ? const Expanded(
                  flex: 5,
                  child: BotoesDireitaSuperior(),
                )
              : Container(),
        ],
      ),
    );
  }
}
