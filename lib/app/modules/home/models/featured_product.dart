class FeaturedProduct {
  FeaturedProduct({
    required this.imgUrl,
    required this.title,
    required this.type,
    required this.rating,
    required this.rattingQuantity,
    required this.price,
    required this.priceCut,
    required this.pricePercentOff,
  });

  final String imgUrl;
  final String title;
  final String type;
  final double rating;
  final int rattingQuantity;
  final double price;
  final double priceCut;
  final String pricePercentOff;

  factory FeaturedProduct.fromJson(Map<String, dynamic> json) {
    return FeaturedProduct(
      imgUrl: json["imgUrl"],
      title: json["title"],
      type: json["type"],
      rating: json["rating"],
      rattingQuantity: json["rattingQuantity"],
      price: json["price"],
      priceCut: json["priceCut"],
      pricePercentOff: json["pricePercentOff"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "imgUrl": this.imgUrl,
      "title": this.title,
      "type": this.type,
      "rating": this.rating,
      "rattingQuantity": this.rattingQuantity,
      "price": this.price,
      "priceCut": this.priceCut,
      "pricePercentOff": this.pricePercentOff,
    };
  }
}
