class BannerAd {
  BannerAd({required this.imgUrl});

  final String imgUrl;

  factory BannerAd.fromJson(Map<String, dynamic> json) {
    return BannerAd(
      imgUrl: json["img_url"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "img_url": imgUrl,
    };
  }
}
