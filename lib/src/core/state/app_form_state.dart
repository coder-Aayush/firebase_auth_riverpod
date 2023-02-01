import 'package:freezed_annotation/freezed_annotation.dart';

part "app_form_state.freezed.dart";

@freezed
class AppFormState<T> with _$AppFormState<T> {
  const factory AppFormState(T form) = _AppFormState;
}
