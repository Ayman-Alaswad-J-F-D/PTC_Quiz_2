import 'package:bloc/bloc.dart';
import 'package:ptc_workshop/core/utils/strings_manager.dart';
import 'package:ptc_workshop/models/mock_data_model.dart';

import '../constants/const.dart';

class AppCubit extends Cubit<int> {
  AppCubit() : super(Const.cartItems.length);

  static List<MockData> get _getCartItems => Const.cartItems;
  static final _defaultCartItem = _getCartItems.first;

  String get getCartTitleAndCounter =>
      '${StringsManager.shoppingCart} ( ${_getCartItems.length} )';

  bool isFoundOffer() => _getCartItems.any((item) => item.offer!);

  void addToCart() {
    _getCartItems.add(_defaultCartItem);
    emit(_getCartItems.length);
  }

  List<MockData> get getAddress => Const.addrsses;
  static final _defaultAddress = Const.addrsses.first;

  void addAddress() => getAddress.add(_defaultAddress);
  void deleteAddress(int index) => getAddress.removeAt(index);
}
