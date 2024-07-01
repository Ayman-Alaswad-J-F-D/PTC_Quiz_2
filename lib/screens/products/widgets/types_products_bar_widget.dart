import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../../core/widgets/selectable_bar_list_horizontal_widget.dart';

class TypesProductsBarWidget extends StatefulWidget {
  const TypesProductsBarWidget({Key? key}) : super(key: key);

  @override
  State<TypesProductsBarWidget> createState() => _TypesProductsBarWidgetState();
}

class _TypesProductsBarWidgetState extends State<TypesProductsBarWidget> {
  int _selecetedIndex = 0;

  void onChange(int index) => setState(() => _selecetedIndex = index);

  @override
  Widget build(BuildContext context) {
    return SelectableBarListHorizontalWidget(
      onChange: onChange,
      selecetedIndex: _selecetedIndex,
      mockData: Const.typesProducts,
    );
  }
}
