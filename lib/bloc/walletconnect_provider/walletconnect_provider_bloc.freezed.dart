// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'walletconnect_provider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletConnectProviderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(String? displayUri) setDisplayUri,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectProviderEventCopyWith<$Res> {
  factory $WalletConnectProviderEventCopyWith(WalletConnectProviderEvent value,
          $Res Function(WalletConnectProviderEvent) then) =
      _$WalletConnectProviderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements $WalletConnectProviderEventCopyWith<$Res> {
  _$WalletConnectProviderEventCopyWithImpl(this._value, this._then);

  final WalletConnectProviderEvent _value;
  // ignore: unused_field
  final $Res Function(WalletConnectProviderEvent) _then;
}

/// @nodoc
abstract class _$$WalletConnectProviderConnectEventCopyWith<$Res> {
  factory _$$WalletConnectProviderConnectEventCopyWith(
          _$WalletConnectProviderConnectEvent value,
          $Res Function(_$WalletConnectProviderConnectEvent) then) =
      __$$WalletConnectProviderConnectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletConnectProviderConnectEventCopyWithImpl<$Res>
    extends _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements _$$WalletConnectProviderConnectEventCopyWith<$Res> {
  __$$WalletConnectProviderConnectEventCopyWithImpl(
      _$WalletConnectProviderConnectEvent _value,
      $Res Function(_$WalletConnectProviderConnectEvent) _then)
      : super(_value, (v) => _then(v as _$WalletConnectProviderConnectEvent));

  @override
  _$WalletConnectProviderConnectEvent get _value =>
      super._value as _$WalletConnectProviderConnectEvent;
}

/// @nodoc

class _$WalletConnectProviderConnectEvent
    implements WalletConnectProviderConnectEvent {
  _$WalletConnectProviderConnectEvent();

  @override
  String toString() {
    return 'WalletConnectProviderEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectProviderConnectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(String? displayUri) setDisplayUri,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
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
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class WalletConnectProviderConnectEvent
    implements WalletConnectProviderEvent {
  factory WalletConnectProviderConnectEvent() =
      _$WalletConnectProviderConnectEvent;
}

/// @nodoc
abstract class _$$WalletConnectProviderSetDisplayUriEventCopyWith<$Res> {
  factory _$$WalletConnectProviderSetDisplayUriEventCopyWith(
          _$WalletConnectProviderSetDisplayUriEvent value,
          $Res Function(_$WalletConnectProviderSetDisplayUriEvent) then) =
      __$$WalletConnectProviderSetDisplayUriEventCopyWithImpl<$Res>;
  $Res call({String? displayUri});
}

/// @nodoc
class __$$WalletConnectProviderSetDisplayUriEventCopyWithImpl<$Res>
    extends _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements _$$WalletConnectProviderSetDisplayUriEventCopyWith<$Res> {
  __$$WalletConnectProviderSetDisplayUriEventCopyWithImpl(
      _$WalletConnectProviderSetDisplayUriEvent _value,
      $Res Function(_$WalletConnectProviderSetDisplayUriEvent) _then)
      : super(_value,
            (v) => _then(v as _$WalletConnectProviderSetDisplayUriEvent));

  @override
  _$WalletConnectProviderSetDisplayUriEvent get _value =>
      super._value as _$WalletConnectProviderSetDisplayUriEvent;

  @override
  $Res call({
    Object? displayUri = freezed,
  }) {
    return _then(_$WalletConnectProviderSetDisplayUriEvent(
      displayUri == freezed
          ? _value.displayUri
          : displayUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WalletConnectProviderSetDisplayUriEvent
    implements WalletConnectProviderSetDisplayUriEvent {
  _$WalletConnectProviderSetDisplayUriEvent(this.displayUri);

  @override
  final String? displayUri;

  @override
  String toString() {
    return 'WalletConnectProviderEvent.setDisplayUri(displayUri: $displayUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectProviderSetDisplayUriEvent &&
            const DeepCollectionEquality()
                .equals(other.displayUri, displayUri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(displayUri));

  @JsonKey(ignore: true)
  @override
  _$$WalletConnectProviderSetDisplayUriEventCopyWith<
          _$WalletConnectProviderSetDisplayUriEvent>
      get copyWith => __$$WalletConnectProviderSetDisplayUriEventCopyWithImpl<
          _$WalletConnectProviderSetDisplayUriEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(String? displayUri) setDisplayUri,
  }) {
    return setDisplayUri(displayUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
  }) {
    return setDisplayUri?.call(displayUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(String? displayUri)? setDisplayUri,
    required TResult orElse(),
  }) {
    if (setDisplayUri != null) {
      return setDisplayUri(displayUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
  }) {
    return setDisplayUri(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
  }) {
    return setDisplayUri?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    required TResult orElse(),
  }) {
    if (setDisplayUri != null) {
      return setDisplayUri(this);
    }
    return orElse();
  }
}

abstract class WalletConnectProviderSetDisplayUriEvent
    implements WalletConnectProviderEvent {
  factory WalletConnectProviderSetDisplayUriEvent(final String? displayUri) =
      _$WalletConnectProviderSetDisplayUriEvent;

  String? get displayUri;
  @JsonKey(ignore: true)
  _$$WalletConnectProviderSetDisplayUriEventCopyWith<
          _$WalletConnectProviderSetDisplayUriEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletConnectProviderState {
  dynamic get isConnected => throw _privateConstructorUsedError;
  RpcService? get rpcService => throw _privateConstructorUsedError;
  CredentialsWithKnownAddress? get credentials =>
      throw _privateConstructorUsedError;
  String? get displayUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletConnectProviderStateCopyWith<WalletConnectProviderState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectProviderStateCopyWith<$Res> {
  factory $WalletConnectProviderStateCopyWith(WalletConnectProviderState value,
          $Res Function(WalletConnectProviderState) then) =
      _$WalletConnectProviderStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isConnected,
      RpcService? rpcService,
      CredentialsWithKnownAddress? credentials,
      String? displayUri});
}

/// @nodoc
class _$WalletConnectProviderStateCopyWithImpl<$Res>
    implements $WalletConnectProviderStateCopyWith<$Res> {
  _$WalletConnectProviderStateCopyWithImpl(this._value, this._then);

  final WalletConnectProviderState _value;
  // ignore: unused_field
  final $Res Function(WalletConnectProviderState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? rpcService = freezed,
    Object? credentials = freezed,
    Object? displayUri = freezed,
  }) {
    return _then(_value.copyWith(
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
      displayUri: displayUri == freezed
          ? _value.displayUri
          : displayUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WalletConnectProviderStateCopyWith<$Res>
    implements $WalletConnectProviderStateCopyWith<$Res> {
  factory _$$_WalletConnectProviderStateCopyWith(
          _$_WalletConnectProviderState value,
          $Res Function(_$_WalletConnectProviderState) then) =
      __$$_WalletConnectProviderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isConnected,
      RpcService? rpcService,
      CredentialsWithKnownAddress? credentials,
      String? displayUri});
}

/// @nodoc
class __$$_WalletConnectProviderStateCopyWithImpl<$Res>
    extends _$WalletConnectProviderStateCopyWithImpl<$Res>
    implements _$$_WalletConnectProviderStateCopyWith<$Res> {
  __$$_WalletConnectProviderStateCopyWithImpl(
      _$_WalletConnectProviderState _value,
      $Res Function(_$_WalletConnectProviderState) _then)
      : super(_value, (v) => _then(v as _$_WalletConnectProviderState));

  @override
  _$_WalletConnectProviderState get _value =>
      super._value as _$_WalletConnectProviderState;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? rpcService = freezed,
    Object? credentials = freezed,
    Object? displayUri = freezed,
  }) {
    return _then(_$_WalletConnectProviderState(
      isConnected: isConnected == freezed ? _value.isConnected : isConnected,
      rpcService: rpcService == freezed
          ? _value.rpcService
          : rpcService // ignore: cast_nullable_to_non_nullable
              as RpcService?,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as CredentialsWithKnownAddress?,
      displayUri: displayUri == freezed
          ? _value.displayUri
          : displayUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WalletConnectProviderState implements _WalletConnectProviderState {
  _$_WalletConnectProviderState(
      {this.isConnected = false,
      this.rpcService,
      this.credentials,
      this.displayUri});

  @override
  @JsonKey()
  final dynamic isConnected;
  @override
  final RpcService? rpcService;
  @override
  final CredentialsWithKnownAddress? credentials;
  @override
  final String? displayUri;

  @override
  String toString() {
    return 'WalletConnectProviderState(isConnected: $isConnected, rpcService: $rpcService, credentials: $credentials, displayUri: $displayUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletConnectProviderState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected) &&
            const DeepCollectionEquality()
                .equals(other.rpcService, rpcService) &&
            const DeepCollectionEquality()
                .equals(other.credentials, credentials) &&
            const DeepCollectionEquality()
                .equals(other.displayUri, displayUri));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isConnected),
      const DeepCollectionEquality().hash(rpcService),
      const DeepCollectionEquality().hash(credentials),
      const DeepCollectionEquality().hash(displayUri));

  @JsonKey(ignore: true)
  @override
  _$$_WalletConnectProviderStateCopyWith<_$_WalletConnectProviderState>
      get copyWith => __$$_WalletConnectProviderStateCopyWithImpl<
          _$_WalletConnectProviderState>(this, _$identity);
}

abstract class _WalletConnectProviderState
    implements WalletConnectProviderState {
  factory _WalletConnectProviderState(
      {final dynamic isConnected,
      final RpcService? rpcService,
      final CredentialsWithKnownAddress? credentials,
      final String? displayUri}) = _$_WalletConnectProviderState;

  @override
  dynamic get isConnected;
  @override
  RpcService? get rpcService;
  @override
  CredentialsWithKnownAddress? get credentials;
  @override
  String? get displayUri;
  @override
  @JsonKey(ignore: true)
  _$$_WalletConnectProviderStateCopyWith<_$_WalletConnectProviderState>
      get copyWith => throw _privateConstructorUsedError;
}
