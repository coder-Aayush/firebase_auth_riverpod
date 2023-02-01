import 'package:firebase_auth_riverpod/src/core/field/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "login_schema.freezed.dart";

@freezed
class LoginSchema with _$LoginSchema {
  const factory LoginSchema({
    required Field<String> email,
    required Field<String> password,
  }) = _LoginSchema;

  factory LoginSchema.empty() =>
      const LoginSchema(email: Field(value: ''), password: Field(value: ''));
}
