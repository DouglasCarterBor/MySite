import 'package:flutter/material.dart';
import 'package:mysite/componentes/botao_rede2.dart';
import 'package:mysite/dados/dados.dart';
import 'package:mysite/uteis/responsivo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
     onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsivo(
          mobile: HomeMobile(scrollController: _scrollController,),
          desktop: HomeDesktop(scrollController: _scrollController,),
          //tablet: HomeTablet(scrollController: _scrollController,),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeMobile({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   //Dados links = Dados();

    // return Container(
    //   color: Colors.green,
    //   child: Text("Mobile"),
    // );

    //return BotaoRede2(links: links.listaUrls);

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(1),
          sliver: SliverToBoxAdapter(
            child: BotaoRede2(
              //iconerede: iconerede,
          ),
          )
          ),
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeDesktop({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text("Desktop"),
    );
  }
}

class HomeTablet extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeTablet({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Text("Tablet"),
    );
  }
}



