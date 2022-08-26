import 'package:flutter/material.dart';

import 'add_to_cart.dart';
import 'capacity_product.dart';
import 'characteristic_product.dart';
import 'color_and_capacity_title.dart';
import 'color_product.dart';
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
  final List<String> capacity;
  const ProductDetails({
    Key? key,
    required this.isFavorite,
    required this.titleProduct,
    required this.ratingUsers,
    required this.camera,
    required this.cpu,
    required this.sd,
    required this.memory,
    required this.capacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 14),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
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
            ),
            const ColorAndCapacityTitle(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  const ColorProduct(),
                  const Spacer(),
                  CapacityProduct(
                    capacity: capacity,
                  ),
                ],
              ),
            ),
            const AddToCart()
          ],
        ),
      ),
    );
  }
}
