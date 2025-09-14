part of 'layout_cubit.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState.initial() = _Initial;

  const factory LayoutState.changeLayoutIndex({@Default(0) int index}) =
      _changeLayoutIndex;
}
