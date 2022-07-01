import 'package:get/get.dart';

import '../../home/models/banner_ad.dart';
import '../../home/models/category.dart';
import '../../home/models/featured_product.dart';
import '../models/product_detail_model.dart';

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
  final List<FeaturedProductDetail> featuredProductsList = [
    FeaturedProductDetail(
        imgUrl: [
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg"
              "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg"
        ],
        title: "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves ",
        type: "Box of 30 Gloves",
        rating: 4,
        rattingQuantity: 156,
        price: 350,
        priceCut: 300,
        pricePercentOff: "10% OFF",
        deliverytime: "Today before 10pm",
        returntype: "Non returnable",
        packsize: [
          "Packed size: 30 gloved inside",
          "Packed size: 40 gloved inside",
          "Packed size: 50 gloved inside",
          "Packed size: 60 gloved inside",
        ],
        prodectdetailtitile:
            "Information about Ansell Micro-Touch N30 Nitrile Latex-Free Disposable Gloves Medium",
        prodectdetail:
            "Ansell Micro-Touch N30 Nitrile Latex-Free Disposable Gloves is important to help minimize the contamination and prevent damage to the skin. It can maximize safety and productivity",
        uses:
            "It is designed to help maximize the safety and minimize the contamination.",
        productspecificationandfeatures: [
          "Significantly stronger alternative than latex",
          "Comfortable with a second skin feel ",
          "Resistant to oils, acids, and many chemicals",
          "Can be used at home as well as in hospitals"
        ],
        directinforuse: "Simply wear it.",
        saftyinformation: [
          "Read the manual carefully before use ",
          "Keep out of reach of the children ",
          "Store in a cool and dry place"
        ]),
  ];

  final List<Category> categories = [
    Category(
      categoryName: 'Covid Essentials',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
    Category(
      categoryName: 'Personal Care',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
    Category(
      categoryName: 'Health Foods and Drinks',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
    Category(
      categoryName: 'Skin CareSkin CareSkin Care CareSkin Care',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
    Category(
      categoryName: 'Home Care',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
    Category(
      categoryName: 'Sexual Wellness',
      imgUrl:
          'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image-768x576.png',
    ),
  ];

  final List<FeaturedProduct> featuredProductsListt = [
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
    FeaturedProduct(
      imgUrl:
          "https://thumbs.dreamstime.com/b/heraklion-greece-january-product-photography-bottle-water-perrier-171374073.jpg",
      title:
          "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free Disposable Gloves N30 Nitrites",
      type: "Box of 30 Gloves",
      rating: 4,
      rattingQuantity: 156,
      price: 350,
      priceCut: 390,
      pricePercentOff: "10% OFF",
    ),
  ];
}
