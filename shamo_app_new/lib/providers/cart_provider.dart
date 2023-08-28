import 'package:flutter/material.dart';
import 'package:shamo_app_new/models/cart_model.dart';
import 'package:shamo_app_new/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];
  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
  }

// exekusi penambahan quantity / product yang belum ada di cart sesuai dari function productExist
  addCart(ProductModel product) {
    if (productExist(product)) {
      int index =
          _carts.indexWhere((element) => element.product.id == product.id);
      _carts[index].quantity++;
    } else {
      _carts.add(CartModel(
        id: _carts.length,
        product: product,
        quantity: 1,
      ));
    }
    notifyListeners();
  }

// remove product dari cart
  removeCart(int id) {
    _carts.removeAt(id);
    totalPrice();
    notifyListeners();
  }

// menambah quantity
  addQuantity(int id) {
    _carts[id].quantity++;
    notifyListeners();
  }

// reduce/kurangi quantity
  reduceQuantity(int id) {
    _carts[id].quantity--;
    if (_carts[id].quantity == 0) {
      _carts.removeAt(id);
    }
    notifyListeners();
  }

// total items
  totalItems() {
    int total = 0;
    for (var item in _carts) {
      total += item.quantity;
    }
    return total;
  }

// total price
  totalPrice() {
    double total = 0;
    for (var item in _carts) {
      total += (item.quantity * item.product.price);
    }
    return total;
  }

// pengecekan jika di dalam cart sudah ada barang yang sama atau belum
  productExist(ProductModel product) {
    if (_carts.indexWhere((element) => element.product.id == product.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
