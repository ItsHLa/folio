import 'package:flutter/material.dart';
import 'package:folio/core/assets.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  
  @override
  void initState() {
    super.initState();
    initAnimation();
  }
  
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
              AssetsData.logo,
          ),
          AnimatedBuilder(
            animation: animation ,
            builder: (context, child) => SlideTransition(
              position: animation,
              child: const Text(
                'Read Free Books',
                textAlign: TextAlign.center,
              ),
            )
            ,
          )
        ],
      ),
    );
  }
  
  void initAnimation(){
     animationController = AnimationController(
         vsync: this ,
       duration: const Duration(seconds: 3)
     );
     animation = Tween<Offset>(begin: const Offset(2,0) ,end: Offset.zero).animate(animationController);
     animationController.forward();
  }
  
}

/*
  late AnimationController animationController; //generate numbers between 0-1
  late Animation<Offset> animation; //to customize the duration of animation (generate values between 0-60)
  SingleTickerProviderStateMixin // responsible of the animation  during the duration
*/