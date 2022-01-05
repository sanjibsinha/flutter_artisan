import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnnimatedButton(
          onTap: () {},
          icon: const Icon(
            MdiIcons.twitter,
            size: 30.0,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class AnnimatedButton extends StatefulWidget {
  const AnnimatedButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final Icon icon;

  @override
  _AnnimatedButtonState createState() => _AnnimatedButtonState();
}

class _AnnimatedButtonState extends State<AnnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 12.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(400),
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          return Ink(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                for (int i = 1; i <= 8; i++)
                  BoxShadow(
                    color: Colors.black38
                        .withOpacity(_animationController.value / 2),
                    spreadRadius: _animation.value * i,
                  )
              ],
            ),
            child: widget.icon,
          );
        },
      ),
    );
  }
}
