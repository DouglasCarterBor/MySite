import 'package:flutter/material.dart';
import 'package:mysite/uteis/tamanho.dart';

class FakeAnimatedBackground extends StatefulWidget {
  @override
  _FakeAnimatedBackgroundState createState() => _FakeAnimatedBackgroundState();
}

class _FakeAnimatedBackgroundState extends State<FakeAnimatedBackground>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this)
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      alignment: Alignment.center,
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Container(
        height: Tamanho.alturahome(context) * 0.6,
        width: Tamanho.largurahome(context) * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5000),
          gradient: SweepGradient(colors: [
            Colors.grey,
            Colors.black38,
            Colors.white70,
            Colors.black38
          ]),
        ),
      ),
    );
  }
}
