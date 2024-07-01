import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutCubit extends Cubit<int> {
  LayoutCubit() : super(0);

  void onChangeScreen(int indexScreen) => emit(indexScreen);
}
