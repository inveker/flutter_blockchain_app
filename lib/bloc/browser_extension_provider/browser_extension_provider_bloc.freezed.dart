// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'browser_extension_provider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrowserExtensionProviderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrowserExtensionProviderConnectEvent value)
        connect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrowserExtensionProviderConnectEvent value)? connect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrowserExtensionProviderConnectEvent value)? connect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowserExtensionProviderEventCopyWith<$Res> {
  factory $BrowserExtensionProviderEventCopyWith(
          BrowserExtensionProviderEvent value,
          $Res Function(BrowserExtensionProviderEvent) then) =
      _$BrowserExtensionProviderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrowserExtensionProviderEventCopyWithImpl<$Res>
    implements $BrowserExtensionProviderEventCopyWith<$Res> {
  _$BrowserExtensionProviderEventCopyWithImpl(this._value, this._then);

  final BrowserExtensionProviderEvent _value;
  // ignore: unused_field
  final $Res Function(BrowserExtensionProviderEvent) _then;
}

/// @nodoc
abstract class _$$BrowserExtensionProviderConnectEventCopyWith<$Res> {
  factory _$$BrowserExtensionProviderConnectEventCopyWith(
          _$BrowserExtensionProviderConnectEvent value,
          $Res Function(_$BrowserExtensionProviderConnectEvent) then) =
      __$$BrowserExtensionProviderConnectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BrowserExtensionProviderConnectEventCopyWithImpl<$Res>
    extends _$BrowserExtensionProviderEventCopyWithImpl<$Res>
    implements _$$BrowserExtensionProviderConnectEventCopyWith<$Res> {
  __$$BrowserExtensionProviderConnectEventCopyWithImpl(
      _$BrowserExtensionProviderConnectEvent _value,
      $Res Function(_$BrowserExtensionProviderConnectEvent) _then)
      : super(
            _value, (v) => _then(v as _$BrowserExtensionProviderConnectEvent));

  @override
  _$BrowserExtensionProviderConnectEvent get _value =>
      super._value as _$BrowserExtensionProviderConnectEvent;
}

/// @nodoc

class _$BrowserExtensionProviderConnectEvent
    implements BrowserExtensionProviderConnectEvent {
  _$BrowserExtensionProviderConnectEvent();

  @override
  String toString() {
    return 'BrowserExtensionProviderEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrowserExtensionProviderConnectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrowserExtensionProviderConnectEvent value)
        connect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BrowserExtensionProviderConnectEvent value)? connect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrowserExtensionProviderConnectEvent value)? connect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class BrowserExtensionProviderConnectEvent
    implements BrowserExtensionProviderEvent {
  factory BrowserExtensionProviderConnectEvent() =
      _$BrowserExtensionProviderConnectEvent;
}

/// @nodoc
mixin _$BrowserExtensionProviderState {
  bool get isSupported => throw _privateConstructorUsedError;
  bool get isInstalled => throw _privateConstructorUsedError;
  dynamic get isConnected => throw _privateConstructorUsedError;
  RpcService? get rpcService => throw _privateConstructorUsedError;
  CredentialsWithKnownAddress? get credentials =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrowserExtensionProviderStateCopyWith<BrowserExtensionProviderState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowserExtensionProviderStateCopyWith<$Res> {
  factory $BrowserExtensionProviderStateCopyWith(
          BrowserExtensionProviderState value,
          $Res Function(BrowserExtensionProviderState) then) =
      _$BrowserExtensionProviderStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSupported,
      bool isInstalled,
      dynamic isConnected,
      RpcService? rpcService,
      CredentialsWithKnownAddress? credentials});
}

/// @nodoc
class _$BrowserExtensionProviderStateCopyWithImpl<$Res>
    implements $BrowserExtensionProviderStateCopyWith<$Res> {
  _$BrowserExtensionProviderStateCopyWithImpl(this._value, this._then);

  final BrowserExtensionProviderState _value;
  // ignore: unused_field
  final $Res Function(BrowserExtensionProviderState) _then;

  @override
  $Res call({
    Object? isSupported = freezed,
    Object? isInstalled = freezed,
    Object? isConnected = freezed,
    Object? rpcService = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_value.copyWith(
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: isInstalled == freezed
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rpcService: rpcService == freezed
          ? _value.rpcService
          : rpcService // ignore: cast_nullable_to_non_nullable
              as RpcService?,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as CredentialsWithKnownAddress?,
    ));
  }
}

/// @nodoc
abstract class _$$_BrowserExtensionProviderStateCopyWith<$Res>
    implements $BrowserExtensionProviderStateCopyWith<$Res> {
  factory _$$_BrowserExtensionProviderStateCopyWith(
          _$_BrowserExtensionProviderState value,
          $Res Function(_$_BrowserExtensionProviderState) then) =
      __$$_BrowserExtensionProviderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSupported,
      bool isInstalled,
      dynamic isConnected,
      RpcService? rpcService,
      CredentialsWithKnownAddress? credentials});
}

/// @nodoc
class __$$_BrowserExtensionProviderStateCopyWithImpl<$Res>
    extends _$BrowserExtensionProviderStateCopyWithImpl<$Res>
    implements _$$_BrowserExtensionProviderStateCopyWith<$Res> {
  __$$_BrowserExtensionProviderStateCopyWithImpl(
      _$_BrowserExtensionProviderState _value,
      $Res Function(_$_BrowserExtensionProviderState) _then)
      : super(_value, (v) => _then(v as _$_BrowserExtensionProviderState));

  @override
  _$_BrowserExtensionProviderState get _value =>
      super._value as _$_BrowserExtensionProviderState;

  @override
  $Res call({
    Object? isSupported = freezed,
    Object? isInstalled = freezed,
    Object? isConnected = freezed,
    Object? rpcService = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_$_BrowserExtensionProviderState(
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: isInstalled == freezed
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: isConnected == freezed ? _value.isConnected : isConnected,
      rpcService: rpcService == freezed
          ? _value.rpcService
          : rpcService // ignore: cast_nullable_to_non_nullable
              as RpcService?,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as CredentialsWithKnownAddress?,
    ));
  }
}

/// @nodoc

class _$_BrowserExtensionProviderState
    implements _BrowserExtensionProviderState {
  _$_BrowserExtensionProviderState(
      {this.isSupported = false,
      this.isInstalled = false,
      this.isConnected = false,
      this.rpcService,
      this.credentials});

  @override
  @JsonKey()
  final bool isSupported;
  @override
  @JsonKey()
  final bool isInstalled;
  @override
  @JsonKey()
  final dynamic isConnected;
  @override
  final RpcService? rpcService;
  @override
  final CredentialsWithKnownAddress? credentials;

  @override
  String toString() {
    return 'BrowserExtensionProviderState(isSupported: $isSupported, isInstalled: $isInstalled, isConnected: $isConnected, rpcService: $rpcService, credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrowserExtensionProviderState &&
            const DeepCollectionEquality()
                .equals(other.isSupported, isSupported) &&
            const DeepCollectionEquality()
                .equals(other.isInstalled, isInstalled) &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected) &&
            const DeepCollectionEquality()
                .equals(other.rpcService, rpcService) &&
            const DeepCollectionEquality()
                .equals(other.credentials, credentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSupported),
      const DeepCollectionEquality().hash(isInstalled),
      const DeepCollectionEquality().hash(isConnected),
      const DeepCollectionEquality().hash(rpcService),
      const DeepCollectionEquality().hash(credentials));

  @JsonKey(ignore: true)
  @override
  _$$_BrowserExtensionProviderStateCopyWith<_$_BrowserExtensionProviderState>
      get copyWith => __$$_BrowserExtensionProviderStateCopyWithImpl<
          _$_BrowserExtensionProviderState>(this, _$identity);
}

abstract class _BrowserExtensionProviderState
    implements BrowserExtensionProviderState {
  factory _BrowserExtensionProviderState(
          {final bool isSupported,
          final bool isInstalled,
          final dynamic isConnected,
          final RpcService? rpcService,
          final CredentialsWithKnownAddress? credentials}) =
      _$_BrowserExtensionProviderState;

  @override
  bool get isSupported;
  @override
  bool get isInstalled;
  @override
  dynamic get isConnected;
  @override
  RpcService? get rpcService;
  @override
  CredentialsWithKnownAddress? get credentials;
  @override
  @JsonKey(ignore: true)
  _$$_BrowserExtensionProviderStateCopyWith<_$_BrowserExtensionProviderState>
      get copyWith => throw _privateConstructorUsedError;
}
