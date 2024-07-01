import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../../../../core/helper/sizer_media_query.dart';
import '../base_list_view_widget.dart';
import 'recommended_list_view_item_widget.dart';

class RecommededListViewWidget extends StatelessWidget {
  const RecommededListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseListViewWidget(
      height: sizeHeight(context) / 3,
      itemCount: Const.recommende.length,
      itemBuilder: (context, index) {
        final mockData = Const.recommende[index];
        return RecomendedListViewItemWidget(mockData: mockData);
      },
    );
  }
}
