part of 'browser_extension_provider_bloc.dart';

@freezed
class BrowserExtensionProviderEvent with _$BrowserExtensionProviderEvent {
  factory BrowserExtensionProviderEvent.connect() = BrowserExtensionProviderConnectEvent;

  factory BrowserExtensionProviderEvent.setIsSupported(bool isSupported) = BrowserExtensionProviderSetIsSupportedEvent;

  factory BrowserExtensionProviderEvent.setIsInstalled(bool isInstalled) = BrowserExtensionProviderSetIsInstalledEvent;
}
