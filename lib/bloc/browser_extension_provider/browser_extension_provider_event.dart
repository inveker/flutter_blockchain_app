part of 'browser_extension_provider_bloc.dart';

@freezed
class BrowserExtensionProviderEvent with _$BrowserExtensionProviderEvent {
  factory BrowserExtensionProviderEvent.connect() = BrowserExtensionProviderConnectEvent;

}
