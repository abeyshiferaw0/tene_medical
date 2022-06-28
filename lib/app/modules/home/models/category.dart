class Category {
  Category({required this.categoryName, required this.imgUrl});

  final String imgUrl;
  final String categoryName;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      imgUrl: json["img_url"],
      categoryName: json["category_name"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "img_url": imgUrl,
      "category_name": categoryName,
    };
  }
}
