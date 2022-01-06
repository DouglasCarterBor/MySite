import 'package:flutter/material.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/tamanho.dart';


class BotoesMeioAppbar extends StatelessWidget {
  const BotoesMeioAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? tamanho = Tamanho.tamanholetras(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){},
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
