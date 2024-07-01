import 'package:flutter/material.dart';

import '../../core/constants/const.dart';
import '../../core/utils/strings_manager.dart';
import '../../models/mock_data_model.dart';
import '../../widgets/custom_app_bar_widget.dart';
import 'widgets/over_list_view/order_list_view_widget.dart';
import 'widgets/placing_orders_bar_widget.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late int _selecetedIndex;
  late final PageController _pageController;

  late final List<String> _placingOrder;
  late final List<MockData> _pastOrderMockData;
  late final List<MockData> _currentOrderMockData;
  late final List<List<MockData>> _orders;

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(context, title: StringsManager.orders),
      body: Column(
        children: [
          PlacingOrdersBarWidget(
            placingOrder: _placingOrder,
            selectedIndex: _selecetedIndex,
            onChange: onChange,
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _orders.length,
              onPageChanged: onChange,
              itemBuilder: (context, index) =>
                  OrderListViewWidget(orders: _orders[index]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _init() {
    _selecetedIndex = 0;
    _pageController = PageController();
    _placingOrder = Const.placingOrder;
    _pastOrderMockData = _getPastOrders();
    _currentOrderMockData = _getCurrentOrders();
    _orders = [_currentOrderMockData, _pastOrderMockData];
  }

  static List<MockData> _getPastOrders() {
    return Const.orders.where((order) => order.isSuccessOrder!).toList();
  }

  static List<MockData> _getCurrentOrders() {
    return Const.orders.where((order) => !order.isSuccessOrder!).toList();
  }

  void onChange(int index) {
    _pageController.animateToPage(
      index,
      duration: Durations.short2,
      curve: Curves.linear,
    );
    _selecetedIndex = index;
    setState(() {});
  }
}
