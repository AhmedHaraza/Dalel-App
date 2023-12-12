// ignore_for_file: file_names
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/service/service_locator.dart';

void onBordingVisited() {
    getIt<CacheHelper>()
        .saveData(key: "on Bording Visited", value: true);
  }