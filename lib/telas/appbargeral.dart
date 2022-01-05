import 'package:flutter/material.dart';
import 'package:mysite/componentes/logo.dart';
import 'package:mysite/uteis/paleta_cores.dart';
import 'package:mysite/uteis/responsivo.dart';

class AppBarGeral extends StatelessWidget {
  const AppBarGeral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsivo.isMobile(context);

    return isMobile ? Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 4
          ),
          ]
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text('Douglas',
              style: TextStyle(
                color: PaletaCores.corFundoBarra,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                letterSpacing: -1.2,
              ),
            ),
          ),
          const Expanded(
            child: Text("Texto"),
            ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [

                ],
              )
          ),
        ],
      ),
    ) : Container(
      child: Text("Desktop"),
    );
  }
}


