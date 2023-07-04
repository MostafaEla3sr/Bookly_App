import 'package:bookly_app/Features/Splash/presentation/view_models/views/widgets/sliding_text_animation.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animatedContainer = AnimationController(vsync: this , duration:const Duration(seconds: 1));

    slidingAnimation = Tween<Offset>(begin:const Offset(0 , 3 ) ,end: Offset.zero).animate(animatedContainer);
    animatedContainer.forward();

  }
  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 5,),
         SlidingTextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }
}

