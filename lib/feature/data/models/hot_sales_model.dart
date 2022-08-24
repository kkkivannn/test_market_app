// Project imports:
import 'package:test_market_app/feature/domain/entities/hot_sales_entiti.dart';

class HotSalesModel extends HotSalesEntiti {
  HotSalesModel(
      {required final String image,
      required final bool isNew,
      required final String name,
      required final String subtitle,
      required final bool isBuy,
      required})
      : super(
          image: image,
          isNew: isNew,
          name: name,
          subtitle: subtitle,
          isBuy: isBuy,
        );
  factory HotSalesModel.fromJson(Map<String, dynamic> json) {
    return HotSalesModel(
      image: json['picture'] as String,
      isNew: json["is_new"] ?? false,
      name: json['title'] as String,
      subtitle: json['subtitle'] as String,
      isBuy: json['is_buy'] as bool,
    );
  }
}
