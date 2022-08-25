import 'package:flutter/material.dart';

import 'characteristic_product.dart';
import 'product_subinfo.dart';
import 'product_title.dart';
import 'rating_bar.dart';

class ProductDetails extends StatelessWidget {
  final bool isFavorite;
  final String titleProduct;
  final double ratingUsers;
  final String camera;
  final String cpu;
  final String sd;
  final String memory;
  const ProductDetails({
    Key? key,
    required this.isFavorite,
    required this.titleProduct,
    required this.ratingUsers,
    required this.camera,
    required this.cpu,
    required this.sd,
    required this.memory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductTitle(
                isFavorite: isFavorite,
                titleProduct: titleProduct,
              ),
              RatingBarWidget(
                ratingUsers: ratingUsers,
              ),
              const SubInfo(),
              CharacteristicProduct(
                camera: camera,
                cpu: cpu,
                sd: sd,
                memory: memory,
              )
            ],
          ),
        ),
      ),
    );
  }
}
