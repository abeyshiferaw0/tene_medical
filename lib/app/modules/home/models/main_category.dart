class MainCategory {
  MainCategory({required this.title, required this.imgUrl});

  final String imgUrl;
  final String title;

  factory MainCategory.fromJson(Map<String, dynamic> json) {
    return MainCategory(
      imgUrl: json["title"],
      title: json["category_name"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "img_url": imgUrl,
      "title": title,
    };
  }
}
