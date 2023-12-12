import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_smooth_indecator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBordingWidgetBody extends StatefulWidget {
  const OnBordingWidgetBody({Key? key}) : super(key: key);

  @override
  State<OnBordingWidgetBody> createState() => _OnBordingWidgetBodyState();
}

class _OnBordingWidgetBodyState extends State<OnBordingWidgetBody> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.resourceImagesOnBoarding1),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothWidget(pageController: _pageController),
              const SizedBox(height: 32),
              Text(
                "Explore The history withDalel in a smart way",
                style: CustomTextStyles.poppins400style20
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              Text(
                "Using our app’s history libraries you can find many historical periods ",
                style: CustomTextStyles.poppins400style20,
                textAlign: TextAlign.center,
              )
            ],
          );
        },
      ),
    );
  }
}
