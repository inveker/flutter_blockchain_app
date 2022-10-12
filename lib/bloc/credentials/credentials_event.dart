part of 'credentials_bloc.dart';

@freezed
class CredentialsEvent with _$CredentialsEvent {
  factory CredentialsEvent.set(CredentialsWithKnownAddress? credentials) = CredentialsSetEvent;
}
