import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mysite/componentes/botao_rede2.dart';
import 'package:mysite/componentes/texto_com_efeito.dart';
import 'package:mysite/uteis/responsivo.dart';
import 'package:mysite/uteis/tamanho.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsivo(
          mobile: HomeMobile(
            scrollController: _scrollController,
          ),
          desktop: HomeDesktop(
            scrollController: _scrollController,
          ),
          tablet: HomeDesktop(
            scrollController: _scrollController,
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeMobile({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Dados links = Dados();

    // return Container(
    //   color: Colors.green,
    //   child: Text("Mobile"),
    // );

    //return BotaoRede2(links: links.listaUrls);

    return Container(
        width: 300,
        child: CustomScrollView(
          controller: scrollController,
          slivers: const [
            SliverPadding(
                padding: EdgeInsets.all(1),
                sliver: SliverToBoxAdapter(
                  child: Center(),
                )),
          ],
        ));
  }
}

class HomeDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeDesktop({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Tamanho.largurahome(context),
      height: Tamanho.alturahome(context),
      color: Colors.white,
      child: Stack(children: <Widget>[
        //DESIGNER
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              margin: const EdgeInsets.all(0),
              height: Tamanho.alturahome(context),
              width: Tamanho.largurahome(context) / 2,
              child: Expanded(
                  child: Center(
                child: Stack(
                  children: [
                    FakeAnimatedBackground(),
                    ShaderMask(
                      blendMode: BlendMode.srcOut,
                      shaderCallback: (bounds) =>
                          LinearGradient(colors: [Colors.white], stops: [0.0])
                              .createShader(bounds),
                      child: SizedBox.expand(
                        child: Container(
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text('designer',
                              style: TextStyle(
                                  fontSize: Tamanho.largurahome(context) / 28,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            )),

        //PROGRAMADOR
        Positioned(
            bottom: 0,
            left: Tamanho.largurahome(context) * 0.54,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/fundoprogramacao2.png"),
                      fit: BoxFit.cover)),
              height: Tamanho.alturahome(context),
              width: Tamanho.largurahome(context) / 2,
              child: Expanded(
                  child: Center(
                child: Text(
                  "programador",
                  style: TextStyle(
                      fontSize: Tamanho.largurahome(context) / 28,
                      fontWeight: FontWeight.bold),
                ),
              )),
            )),

        //FOTO
        Positioned(
          left: 0,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(
                "assets/foto6.png",
              ),
            )),
            // decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(10),
            //color: Colors.white,
            // border: Border(
            //left: BorderSide(
            //color: Colors.white,
            //width: 3,
            //),
            //  ),
            //  ),
            //margin: const EdgeInsets.all(0),
            height: Tamanho.alturahome(context),
            width: Tamanho.largurahome(context),
          ),
        ),
      ]),
    );
  }
}

class HomeTablet extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeTablet({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text("Tablet"),
    );
  }
}
