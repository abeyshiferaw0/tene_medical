import 'package:get/get.dart';

import '../../home/models/banner_ad.dart';

class ProductController extends GetxController {
  //TODO: Implement ProductController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  final List<BannerAd> smallBannerAds = [
    BannerAd(
      imgUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b530f7110494491.5feef8228f2b8.png',
    ),
    BannerAd(
      imgUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b530f7110494491.5feef8228f2b8.png',
    ),
    BannerAd(
      imgUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b530f7110494491.5feef8228f2b8.png',
    ),
    BannerAd(
      imgUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b530f7110494491.5feef8228f2b8.png',
    ),
    BannerAd(
      imgUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b530f7110494491.5feef8228f2b8.png',
    )
  ];
}
