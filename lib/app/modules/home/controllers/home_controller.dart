import 'package:get/get.dart';
import 'package:tene_medical/app/modules/home/models/banner_ad.dart';
import 'package:tene_medical/app/modules/home/models/category.dart';
import 'package:tene_medical/app/modules/home/models/featured_product.dart';
import 'package:tene_medical/app/modules/home/models/health_blog.dart';
import 'package:tene_medical/app/modules/home/models/main_category.dart';

class HomeController extends GetxController {
  ///FIRST BANNER DEMO LIST
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

  ///MAIN CATEGORIES DEMO LIST
  final List<MainCategory> mainCategories = [
    MainCategory(
      title: 'Medicine',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
    MainCategory(
      title: 'HealthCare',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
    MainCategory(
      title: 'Perception',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
    MainCategory(
      title: 'Best Offer',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
    MainCategory(
      title: 'Best Offer',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
    MainCategory(
      title: 'Best Offer',
      imgUrl:
          'https://designshack.net/wp-content/uploads/placeholder-image.png',
    ),
  ];

  ///CATEGORY DEMO LIST
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

  ///FEATURED PRODUCTS DEMO LIST
  final List<FeaturedProduct> featuredProductsList = [
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

  ///HEALTH BLOGS DEMO LIST
  final List<HealthBlog> healthBlogs = [
    HealthBlog(
      description:
          "The updated 3rd edition now classifies sleep disorders under 6 major categories: insomnia, sleep related breathing disorders, central disorders of hypersomnolence, circadian rhythm sleep-wake disorders, parasomnias, and sleep related movement disorders",
      title: "The Six Types of Sleep Disorders",
      imgUrl:
          "https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg",
    ),
    HealthBlog(
      description:
          "The updated 3rd edition now classifies sleep disorders under 6 major categories: insomnia, sleep related breathing disorders, central disorders of hypersomnolence, circadian rhythm sleep-wake disorders, parasomnias, and sleep related movement disorders",
      title: "The Six Types of Sleep Disorders",
      imgUrl:
          "https://thumbs.dreamstime.com/b/photo-young-beautiful-smiling-cheerful-positive-girl-take-selfie-wink-eye-showing-ok-sign-isolated-purple-color-background-213040530.jpg",
    ),
    HealthBlog(
      description:
          "The updated 3rd edition now classifies sleep disorders under 6 major categories: insomnia, sleep related breathing disorders, central disorders of hypersomnolence, circadian rhythm sleep-wake disorders, parasomnias, and sleep related movement disorders",
      title: "The Six Types of Sleep Disorders",
      imgUrl:
          "https://thumbs.dreamstime.com/b/photo-girl-make-selfie-wink-eye-tongue-out-show-v-sign-wear-green-sweatshirt-isolated-blue-color-background-207360038.jpg",
    ),
    HealthBlog(
      description:
          "The updated 3rd edition now classifies sleep disorders under 6 major categories: insomnia, sleep related breathing disorders, central disorders of hypersomnolence, circadian rhythm sleep-wake disorders, parasomnias, and sleep related movement disorders",
      title: "The Six Types of Sleep Disorders",
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_qLtU_VPRFoGs--e7-a3mdgQYPvwENzuSvUXO2t5P_CYJpCngFPwkl53c2bTeCiJCaLk&usqp=CAU",
    ),
  ];
}
