part of 'browser_extension_provider_bloc.dart';

@freezed
class BrowserExtensionProviderState with _$BrowserExtensionProviderState {
  factory BrowserExtensionProviderState({
    @Default(false) bool isSupported,
    @Default(false) bool isInstalled,
    @Default(false) isConnected,
    RpcService? rpcService,
    CredentialsWithKnownAddress? credentials,
}) = _BrowserExtensionProviderState;
}
