import 'package:freezed_annotation/freezed_annotation.dart';

part "field.freezed.dart";

@freezed
class Field<T> with _$Field<T> {
  const factory Field({
    required T value,
    String? errorMessage,
    @Default(false) bool isValid,
  }) = _Field;
}
