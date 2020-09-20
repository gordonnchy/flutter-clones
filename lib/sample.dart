import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, -5.0)).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    // if (_controller.isDismissed) {
    //   _controller.forward();
    // } else if (_controller.isCompleted) {
    //   _controller.reset();
    //   _controller.forward();
    // } else {
    //   _controller.reverse();
    // }
    return Scaffold(
      body: Center(
        // height: double.infinity,
        // width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedBuilder(
            //   key: Key('one'),
            //   animation: _animation,
            //   builder: (context, child) {
            //     return Transform.scale(
            //       scale: _animation.value,
            //       child: GestureDetector(
            //         onTap: () {
            //           print('tapped');
            //           if (_controller.isDismissed) {
            //             _controller.forward();
            //           } else {
            //             _controller.reverse();
            //           }
            //         },
            //         child: Container(
            //           width: 50,
            //           height: 50,
            //           decoration: BoxDecoration(
            //             color: Colors.green,
            //             shape: BoxShape.circle,
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            SlideTransition(
              position: _animation,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
