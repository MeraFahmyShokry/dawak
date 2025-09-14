import 'package:clean_arc/core/presentation/util/style/colors/color_ligh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'layout_cubit.freezed.dart';

part 'layout_state.dart';

@injectable
class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(const LayoutState.initial());
  int currentIndex = 0;

  void changePageIndex(int index) {
    print('changePageIndex ${index}');
    currentIndex = index;
    emit(LayoutState.changeLayoutIndex(index: index));
  }


  Color get  getSelectedColor {
    if (currentIndex == 2) {
      return ColorsLight.redColor;
    } else {
      return ColorsLight.black10;
    }
  }

}
