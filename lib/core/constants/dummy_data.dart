import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Kem chuối',
      weight: '800 gram',
      cover: 'https://i.imgur.com/6unJlSL.png',
      images: ['https://i.imgur.com/6unJlSL.png'],
      price: 27500,
      mainPrice: 0,
    ),
    ProductModel(
      name: 'Kem vani chuối',
      weight: '500 gram',
      cover: 'https://i.imgur.com/oaCY49b.png',
      images: ['https://i.imgur.com/oaCY49b.png'],
      price: 45000,
      mainPrice: 26500,
    ),
    ProductModel(
      name: 'Thịt',
      weight: '1 Kg',
      cover: 'https://i.imgur.com/5wghZji.png',
      images: ['https://i.imgur.com/5wghZji.png'],
      price: 30000,
      mainPrice: 20000,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'Gói rau củ',
      cover: 'https://i.imgur.com/Y0IFT2g.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 30000,
      mainPrice: 50000,
    ),
    BundleModel(
      name: 'Medium Spices Pack',
      cover: 'https://i.postimg.cc/qtM4zj1K/packs-2.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Bundle Pack',
      cover: 'https://i.postimg.cc/MnwW8WRd/pack-1.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 30000,
      mainPrice: 50000,
    ),
    BundleModel(
      name: 'Gói rau củ',
      cover: 'https://i.postimg.cc/k2y7Jkv9/pack-4.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 50000,
      mainPrice: 30000,
    ),
  ];
}
