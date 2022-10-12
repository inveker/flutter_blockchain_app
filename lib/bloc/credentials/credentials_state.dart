part of 'credentials_bloc.dart';

@freezed
class CredentialsState with _$CredentialsState {
  factory CredentialsState({
    CredentialsWithKnownAddress? credentials,
  }) = _CredentialsState;
}
