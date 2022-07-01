class FeaturedProductDetail {
  FeaturedProductDetail({
    this.prodectdetailtitile,
    this.deliverytime,
    this.returntype,
    this.packsize,
    this.prodectdetail,
    this.uses,
    this.productspecificationandfeatures,
    this.directinforuse,
    this.saftyinformation,
    this.imgUrl,
    this.title,
    this.type,
    this.rating,
    this.rattingQuantity,
    this.price,
    this.priceCut,
    this.pricePercentOff,
  });

  final List<String>? imgUrl;
  final String? title;
  final String? type;
  final double? rating;
  final int? rattingQuantity;
  final double? price;
  final double? priceCut;
  final String? pricePercentOff;
  final String? deliverytime;
  final String? returntype;
  final List<String>? packsize;
  final String? prodectdetail;
  final String? prodectdetailtitile;
  final String? uses;
  final List<String>? productspecificationandfeatures;
  final String? directinforuse;
  final List<String>? saftyinformation;
  factory FeaturedProductDetail.fromJson(Map<String, dynamic> json) {
    return FeaturedProductDetail(
      imgUrl: json["imgUrl"],
      title: json["title"],
      type: json["type"],
      rating: json["rating"],
      rattingQuantity: json["rattingQuantity"],
      price: json["price"],
      priceCut: json["priceCut"],
      pricePercentOff: json["pricePercentOff"],
      deliverytime: json["deliverytime"],
      returntype: json["returntype"],
      packsize: json["packsize"],
      prodectdetail: json["prodectdetail"],
      prodectdetailtitile: json["prodectdetailtitile"],
      uses: json["uses"],
      productspecificationandfeatures: json["productspecificationandfeatures"],
      directinforuse: json["directinforuse"],
      saftyinformation: json["saftyinformation"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "imgUrl": imgUrl,
      "title": title,
      "type": type,
      "rating": rating,
      "rattingQuantity": rattingQuantity,
      "price": price,
      "priceCut": priceCut,
      "pricePercentOff": pricePercentOff,
      "deliverytime": deliverytime,
      "returntype": returntype,
      "packsize": packsize,
      "prodectdetail": prodectdetail,
      "uses": uses,
      "productspecificationandfeatures": productspecificationandfeatures,
      "directinforuse": directinforuse,
      "saftyinformation": saftyinformation,
    };
  }
}
