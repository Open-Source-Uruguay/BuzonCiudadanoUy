import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF103aa2),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.h),
            child: const Center(
              child: Text(
                "BuzónCiudadanoUy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/circle.svg',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                RotationTransition(
                  turns: animation,
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/images/star.svg',
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
