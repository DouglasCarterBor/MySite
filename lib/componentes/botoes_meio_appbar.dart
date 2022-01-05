import 'package:flutter/material.dart';


class BotoesMeioAppbar extends StatelessWidget {
  const BotoesMeioAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: (){}, child: const Text("quem eu sou"),),
        TextButton(onPressed: (){}, child: const Text("livro"),),
        TextButton(onPressed: (){}, child: const Text("portifólio"),),
        TextButton(onPressed: (){}, child: const Text("blog"),),
        TextButton(onPressed: (){}, child: const Text("contato"),),
      ],
    );
  }
}
