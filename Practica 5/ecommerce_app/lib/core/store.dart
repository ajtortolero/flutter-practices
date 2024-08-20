import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatelogModel? catelog;
  CartModel? cart;
  MyStore() {
    catelog = CatelogModel();
    cart = CartModel();
    cart!.catelog = catelog!;
  }
}
