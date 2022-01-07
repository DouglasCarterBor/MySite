import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mysite/uteis/tamanho.dart';
import 'package:line_icons/line_icon.dart';

class BotoesDireitaSuperior extends StatelessWidget {

  const BotoesDireitaSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu),
          color: Colors.white,
          iconSize: Tamanho.larguralementosappbar(context),
        ),
      ],
    );
  }
}
