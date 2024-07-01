import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_workshop/core/cubit/app_cubit.dart';
import 'package:ptc_workshop/models/mock_data_model.dart';

import '../add_new_address_button_widget.dart';
import '../dialog_widget.dart';
import 'checkout_address_list_view_item_widget.dart';

class CheckoutAddressListViewWidget extends StatefulWidget {
  const CheckoutAddressListViewWidget({Key? key}) : super(key: key);

  @override
  State<CheckoutAddressListViewWidget> createState() =>
      _CheckoutAddressListViewWidgetState();
}

class _CheckoutAddressListViewWidgetState
    extends State<CheckoutAddressListViewWidget> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final _addressesLength = context.read<AppCubit>().getAddress.length;
    return ListView.builder(
      itemCount: _addressesLength,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CheckoutAddressListViewItemWidget(
              address: context.read<AppCubit>().getAddress[index],
              index: index,
              selectedItem: _selectedItem,
              onTap: _onTap,
              onTapEdit: _onTapEdit,
            ),
            if (index == _addressesLength - 1)
              AddNewAddressButtonWidget(onPressed: _addNewAddressWidget),
          ],
        );
      },
    );
  }

  void _onTap(int index) => setState(() => _selectedItem = index);

  Future<void> _onTapEdit(BuildContext context, int index) async {
    await _editAddress(context, index);
    setState(() {});
  }

  void _addNewAddressWidget() => setState(context.read<AppCubit>().addAddress);

  static Future<void> _editAddress(BuildContext context, int index) async {
    await showDialog<MockData?>(
      context: context,
      builder: (context) => DialogWidget(index: index),
    ).then((address) {
      if (address == null) return;
      context.read<AppCubit>().getAddress[index] = address;
    });
  }
}
