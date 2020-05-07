import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationScene extends StatefulWidget {
  @override
  _AnimationSceneState createState() => _AnimationSceneState();
}

class _AnimationSceneState extends State<AnimationScene>
    with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
        parent: animController,
        curve: Curves.bounceIn,
    reverseCurve: Curves.easeOut);

    animation =
    Tween<double>(
        begin: 0, end: 2 * math.pi
    ).chain(CurveTween(curve: Curves.easeOut))
        .animate(curvedAnimation)
      ..addStatusListener( (status) {
        if(status == AnimationStatus.completed){
          animController.reverse();
        }else if(status == AnimationStatus.dismissed){
          animController.forward();
        }
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Instead of RotatingTransition we can use:
      // RotationTransition or SizedTransition or Faded and many more
      body: RotatingTransition(

          angle: animation,
          child: ProfileImage()
      )
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}

class RotatingTransition extends StatelessWidget {
  RotatingTransition({
    @required this.angle,
    @required this.child,
});

  final Widget child;
  final Animation<double> angle;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: angle,
        child: child,
        builder: (context, child) {
          return Transform.rotate(
            angle: angle.value,
          child: child,);
        });
  }
}


class ProfileImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Image.asset('assets/profile.jpg'),
    );
  }
}

