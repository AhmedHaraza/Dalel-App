import 'package:dalel_app/core/utils/app_assets.dart';

class OnBordingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBordingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<OnBordingModel> onBordingData = [
  OnBordingModel(
      imagePath: Assets.resourceImagesOnBoarding1,
      title: "Explore The history withDalel in a smart way",
      subTitle:
          "Using our app’s history libraries you can find many historical periods"),
  OnBordingModel(
    imagePath: Assets.resourceImagesOnBoarding2,
    title: "From every placeon earth",
    subTitle: "A big variety of ancient placesfrom all over the world",
  ),
  OnBordingModel(
      imagePath: Assets.resourceImagesOnBoarding,
      title: "Using modern AI technologyfor better user experience",
      subTitle:
          "AI provide recommendations and helpsyou to continue the search journey"),
];
