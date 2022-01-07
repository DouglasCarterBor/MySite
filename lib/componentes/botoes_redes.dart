import 'package:flutter/material.dart';
import 'package:mysite/componentes/botao_rede.dart';
import 'package:mysite/componentes/botao_rede2.dart';
import 'package:mysite/componentes/card_botao_redes_regiao_mouse.dart';
import 'package:mysite/dados/dados.dart';
import 'package:mysite/uteis/tamanho.dart';

class BotoesRedes extends StatelessWidget {

  // final int indiceBotaoSelecionado;
  // final Function(int) onTap;
  // final List<String> urls;

  const BotoesRedes({Key? key,}) : super(key: key);

  //https://icons8.com.br/icons/set/whatsApp--white

  // Usuários ativos
  // Facebook. 2,85 bilhões.
  // YouTube. 2,29 bilhões.
  // WhatsApp. 2 bilhões.
  // Instagram. 1,39 bilhão.
  // Facebook Messenger. 1,3 bilhão.
  // WeChat. 1,24 bilhão.
  // LinkedIn. 768 milhões.
  // TikTok. 732 milhões.


  @override
  Widget build(BuildContext context) {

      //Dados links = Dados();

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         // RegiaoMouse(),
          // Container(
          //   child: GestureDetector(
          //     child: Image.network("https://img.icons8.com/ios-filled/50/ffffff/facebook-f.png",
          //         width: Tamanho.larguralementosappbar(context),
          //         height: Tamanho.alturaelementosappbar(context)),
          //   ),
          // ),
          // Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          // Container(
          //   child: GestureDetector(
          //     //child: const CardBotaoRedesRegiaoMouse(),
          //   ),
          // ),
          //BotaoRede2(links: links.listaUrls),

          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          Container(
           child: GestureDetector(
              child: Image.network("https://img.icons8.com/ios-filled/50/ffffff/whatsapp--v1.png",
                width: Tamanho.larguralementosappbar(context),
                height: Tamanho.alturaelementosappbar(context)),
            ),
          ),
          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          Container(
           child: GestureDetector(
              child: Image.network("https://img.icons8.com/glyph-neue/64/ffffff/instagram-new.png",
                width: Tamanho.larguralementosappbar(context),
                height: Tamanho.alturaelementosappbar(context)),
            ),
          ),
          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          Container(
            child: GestureDetector(
              child: Image.network("https://img.icons8.com/ios-filled/50/ffffff/linkedin-2--v1.png",
                  width: Tamanho.larguralementosappbar(context),
                  height: Tamanho.alturaelementosappbar(context)),
            ),
          ),
          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          Container(
           child: GestureDetector(
              child: Image.network("https://img.icons8.com/glyph-neue/64/ffffff/twitter.png",
                width: Tamanho.larguralementosappbar(context),
                height: Tamanho.alturaelementosappbar(context)),
            ),
          ),
          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),
          Container(
           child: GestureDetector(
              child: Image.network("https://img.icons8.com/ios-filled/50/ffffff/github.png",
                width: Tamanho.larguralementosappbar(context),
                height: Tamanho.alturaelementosappbar(context)),
            ),
          ),
          Padding(padding: EdgeInsets.all(Tamanho.espacoentreredes(context))),

        ],
      ),
    );
  }
}
