import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
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
        const SizedBox(
          height: 5,
        ),
        SlidingTextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animatedContainer =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animatedContainer);
    animatedContainer.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade, duration: kTransitionDuration);
        GoRouter.of(context).push('/homeView');
      },
    );
  }
}
