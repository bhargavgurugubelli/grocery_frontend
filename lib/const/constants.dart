import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:grocery_app/src/categories/models/categories_model.dart';
import 'package:grocery_app/src/products/models/products_model.dart';
import 'package:flutter/material.dart';

LinearGradient kGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
    Kolors.kPrimary,
  ],
);

LinearGradient kPGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kPrimaryLight.withOpacity(0.7),
    Kolors.kPrimary,
  ],
);

LinearGradient kBtnGradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
  ],
);

BorderRadiusGeometry kClippingRadius = const BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

BorderRadiusGeometry kRadiusAll = BorderRadius.circular(12);

BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  topLeft: Radius.circular(9),
  topRight: Radius.circular(9),
);

BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
  bottomLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
);

Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      R.ASSETS_IMAGES_PLACEHOLDER_jpg,
      fit: BoxFit.cover,
    );

Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p3) => Image.asset(
          R.ASSETS_IMAGES_PLACEHOLDER_jpg,
          fit: BoxFit.cover,
        );

List<String> images = [
  "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/Images%2Fslideshow.png?alt=media&token=1c6171a9-d63e-4738-b117-d20a87c8786c",
  "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/Images%2Fslideshow.png?alt=media&token=1c6171a9-d63e-4738-b117-d20a87c8786c",
  "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/Images%2Fslideshow.png?alt=media&token=1c6171a9-d63e-4738-b117-d20a87c8786c",
  "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/Images%2Fslideshow.png?alt=media&token=1c6171a9-d63e-4738-b117-d20a87c8786c",
  // "https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fslider1.png?alt=media&token=8b27e621-e5ea-4ba4-ab15-0302d02c75f3",
];

List<Categories> categories = [
  Categories(
      title: "Vegetables",
      id: 9,
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/tomoto.svg?alt=media&token=2c5dfedf-bdd8-4897-b54d-ec335d9cf676"),
  Categories(
      title: "Grocery",
      id: 8,
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/grocery.svg?alt=media&token=4c9fdba6-3b3a-4b92-b5da-2100e7511967"),
  Categories(
      title: "Dairy",
      id: 10,
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/dairy.svg?alt=media&token=dd9d0634-edb2-4b2b-984f-e5f7f4f35932"),
  Categories(
      title: "fruits",
      id: 7,
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/apple.svg?alt=media&token=57ce26b0-f4af-4df6-96c1-7bd4c7a45559"),
  Categories(
      title: "Poultry",
      id: 11,
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/poultry.svg?alt=media&token=63778470-fd4b-44a8-a7fe-8e54d3ef535c")
];



List<Products> products = [
  Products(
    id: 17,
    title: "oranges",
    price: 50.0,
    description: "1 Kg",
    ratings: 5.0,
    imageUrls: [
      "https://firebasestorage.googleapis.com/v0/b/grocery-app-c5537.firebasestorage.app/o/orange%20(1).png?alt=media&token=44337ef8-9cf9-4afb-bb99-aa8c638a9c66"
    ],
    createdAt: DateTime.parse("2025-04-04T16:03:10+05:30"),
    category: 7,
  ),
];




String avatar =
    'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Favatar.png?alt=media&token=7da81de9-a163-4296-86ac-3194c490ce15';


