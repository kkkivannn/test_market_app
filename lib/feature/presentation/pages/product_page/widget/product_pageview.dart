// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'product_image.dart';

class ProductPageview extends StatefulWidget {
  final List<String> image;
  final int count;
  const ProductPageview({Key? key, required this.image, required this.count})
      : super(key: key);

  @override
  State<ProductPageview> createState() => _ProductPageviewState();
}

class _ProductPageviewState extends State<ProductPageview> {
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  PageController pageController = PageController(viewportFraction: .7);
  double currentPageValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        height: 335,
        child: PageView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          children: List.generate(
            widget.count,
            (index) {
              if (index == currentPageValue) {
                return Transform.scale(
                  scale: 1,
                  child: ProductImage(
                    image: widget.image[index],
                  ),
                );
              } else if (index < currentPageValue) {
                return Transform.scale(
                  scale: max(1 - (currentPageValue - index), .75),
                  child: ProductImage(
                    image: widget.image[index],
                  ),
                );
              } else {
                return Transform.scale(
                  scale: max(1 - (index - currentPageValue), .75),
                  child: ProductImage(
                    image: widget.image[index],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
