import 'basket_entiti.dart';

class BagEntiti {
  final List<BasketEntiti> basket;
  final String delivery;
  final String id;
  final int total;

  BagEntiti({
    required this.basket,
    required this.delivery,
    required this.id,
    required this.total,
  });
}
