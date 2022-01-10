import 'package:flutter/material.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';
import 'package:url_launcher/url_launcher.dart';


class BotoesMeioAppbar extends StatelessWidget {
  const BotoesMeioAppbar({Key? key}) : super(key: key);

  static const String _url1 = 'https://www.facebook.com/douglas.bordignon.58/';

  _launchURL1() async {
    if (!await launch(_url1)) throw 'Could not launch $_url1';
  }

  @override
  Widget build(BuildContext context) {
    double? tamanho = Tamanho.tamanholetras(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: _launchURL1,
          child: Text("quem sou eu",
          style: TextStyle(color: PaletaCores.corElementosBarra,
            fontSize: tamanho),
        ),),
        TextButton(onPressed: (){}, child: Text("livro",
          style: TextStyle(color: PaletaCores.corElementosBarra,
            fontSize: tamanho,),
        ),),
        TextButton(onPressed: (){}, child: Text("portifólio",
          style: TextStyle(color: PaletaCores.corElementosBarra,
            fontSize: tamanho,),
        ),),
        TextButton(onPressed: (){}, child: Text("blog",
          style: TextStyle(color: PaletaCores.corElementosBarra,
            fontSize: tamanho,),
        ),),
        TextButton(onPressed: (){}, child: Text("contato",
          style: TextStyle(color: PaletaCores.corElementosBarra,
            fontSize: tamanho,),
        ),),
      ],
    );
  }
}
