import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_routers.dart';
import 'package:dalel_app/feature/onBording/peresentation/views/functions/on_Bording_visited.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_nav_bar_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/get_boutton_widget.dart';
import 'package:dalel_app/feature/onBording/widgets/on_bording_widget_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  int curentInex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              CustomNavBar(
                onTap: () {
                  onBordingVisited();
                  goNext(context: context, path: Routes.singUpViewRoute);
                },
              ),
              OnBordingWidgetBody(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    curentInex = index;
                  });
                },
              ),
              const SizedBox(height: 88),
              GetBoutton(curentIndex: curentInex, controller: _pageController),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
