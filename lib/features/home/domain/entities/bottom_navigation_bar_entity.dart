import 'package:fruit_hub/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String inActingImage, activeImage, name;

  BottomNavigationBarEntity({
    required this.inActingImage,
    required this.activeImage,
    required this.name,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems {
  return [
    BottomNavigationBarEntity(
      inActingImage: Assets.homeOutlineIcon,
      activeImage: Assets.homeBoldIcon,
      name: "الرئيسية",
    ),
    BottomNavigationBarEntity(
      inActingImage: Assets.productsOutlineIcon,
      activeImage: Assets.productsBoldIcon,
      name: "المنتجات",
    ),
    BottomNavigationBarEntity(
      inActingImage: Assets.shoppingCartOutlineIcon,
      activeImage: Assets.shoppingCartBoldIcon,
      name: "سلة التسوق",
    ),
    BottomNavigationBarEntity(
      inActingImage: Assets.userOutlineIcon,
      activeImage: Assets.userBoldIcon,
      name: "حسابي",
    ),
  ];
}
