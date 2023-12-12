import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/onBording/data/model/on_bording_model.dart';
import 'package:dalel_app/feature/onBording/widgets/custom_smooth_indecator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBordingWidgetBody extends StatelessWidget {
  const OnBordingWidgetBody({Key? key, required this.controller, required this.onPageChanged}) : super(key: key);
  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged:onPageChanged,
        physics: const BouncingScrollPhysics(),
        itemCount: onBordingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBordingData[index].imagePath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              const SizedBox(height: 32),
              Text(
                onBordingData[index].title,
                style: CustomTextStyles.poppins400style20
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              Text(
                onBordingData[index].subTitle,
                style: CustomTextStyles.poppins400style20,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          );
        },
      ),
    );
  }
}
