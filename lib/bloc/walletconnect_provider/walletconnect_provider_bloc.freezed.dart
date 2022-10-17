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
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
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
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
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
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
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
abstract class _$$WalletConnectProviderRestoreEventCopyWith<$Res> {
  factory _$$WalletConnectProviderRestoreEventCopyWith(
          _$WalletConnectProviderRestoreEvent value,
          $Res Function(_$WalletConnectProviderRestoreEvent) then) =
      __$$WalletConnectProviderRestoreEventCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> json});
}

/// @nodoc
class __$$WalletConnectProviderRestoreEventCopyWithImpl<$Res>
    extends _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements _$$WalletConnectProviderRestoreEventCopyWith<$Res> {
  __$$WalletConnectProviderRestoreEventCopyWithImpl(
      _$WalletConnectProviderRestoreEvent _value,
      $Res Function(_$WalletConnectProviderRestoreEvent) _then)
      : super(_value, (v) => _then(v as _$WalletConnectProviderRestoreEvent));

  @override
  _$WalletConnectProviderRestoreEvent get _value =>
      super._value as _$WalletConnectProviderRestoreEvent;

  @override
  $Res call({
    Object? json = freezed,
  }) {
    return _then(_$WalletConnectProviderRestoreEvent(
      json == freezed
          ? _value._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$WalletConnectProviderRestoreEvent
    implements WalletConnectProviderRestoreEvent {
  _$WalletConnectProviderRestoreEvent(final Map<String, dynamic> json)
      : _json = json;

  final Map<String, dynamic> _json;
  @override
  Map<String, dynamic> get json {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_json);
  }

  @override
  String toString() {
    return 'WalletConnectProviderEvent.restore(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectProviderRestoreEvent &&
            const DeepCollectionEquality().equals(other._json, _json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_json));

  @JsonKey(ignore: true)
  @override
  _$$WalletConnectProviderRestoreEventCopyWith<
          _$WalletConnectProviderRestoreEvent>
      get copyWith => __$$WalletConnectProviderRestoreEventCopyWithImpl<
          _$WalletConnectProviderRestoreEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) {
    return restore(json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) {
    return restore?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class WalletConnectProviderRestoreEvent
    implements WalletConnectProviderEvent {
  factory WalletConnectProviderRestoreEvent(final Map<String, dynamic> json) =
      _$WalletConnectProviderRestoreEvent;

  Map<String, dynamic> get json;
  @JsonKey(ignore: true)
  _$$WalletConnectProviderRestoreEventCopyWith<
          _$WalletConnectProviderRestoreEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletConnectProviderResetEventCopyWith<$Res> {
  factory _$$WalletConnectProviderResetEventCopyWith(
          _$WalletConnectProviderResetEvent value,
          $Res Function(_$WalletConnectProviderResetEvent) then) =
      __$$WalletConnectProviderResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletConnectProviderResetEventCopyWithImpl<$Res>
    extends _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements _$$WalletConnectProviderResetEventCopyWith<$Res> {
  __$$WalletConnectProviderResetEventCopyWithImpl(
      _$WalletConnectProviderResetEvent _value,
      $Res Function(_$WalletConnectProviderResetEvent) _then)
      : super(_value, (v) => _then(v as _$WalletConnectProviderResetEvent));

  @override
  _$WalletConnectProviderResetEvent get _value =>
      super._value as _$WalletConnectProviderResetEvent;
}

/// @nodoc

class _$WalletConnectProviderResetEvent
    implements WalletConnectProviderResetEvent {
  _$WalletConnectProviderResetEvent();

  @override
  String toString() {
    return 'WalletConnectProviderEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectProviderResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class WalletConnectProviderResetEvent
    implements WalletConnectProviderEvent {
  factory WalletConnectProviderResetEvent() = _$WalletConnectProviderResetEvent;
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
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) {
    return setDisplayUri(displayUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) {
    return setDisplayUri?.call(displayUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
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
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) {
    return setDisplayUri(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) {
    return setDisplayUri?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
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
abstract class _$$WalletConnectProviderUpdateSessionEventCopyWith<$Res> {
  factory _$$WalletConnectProviderUpdateSessionEventCopyWith(
          _$WalletConnectProviderUpdateSessionEvent value,
          $Res Function(_$WalletConnectProviderUpdateSessionEvent) then) =
      __$$WalletConnectProviderUpdateSessionEventCopyWithImpl<$Res>;
  $Res call({WCSessionUpdateResponse sessionUpdate});
}

/// @nodoc
class __$$WalletConnectProviderUpdateSessionEventCopyWithImpl<$Res>
    extends _$WalletConnectProviderEventCopyWithImpl<$Res>
    implements _$$WalletConnectProviderUpdateSessionEventCopyWith<$Res> {
  __$$WalletConnectProviderUpdateSessionEventCopyWithImpl(
      _$WalletConnectProviderUpdateSessionEvent _value,
      $Res Function(_$WalletConnectProviderUpdateSessionEvent) _then)
      : super(_value,
            (v) => _then(v as _$WalletConnectProviderUpdateSessionEvent));

  @override
  _$WalletConnectProviderUpdateSessionEvent get _value =>
      super._value as _$WalletConnectProviderUpdateSessionEvent;

  @override
  $Res call({
    Object? sessionUpdate = freezed,
  }) {
    return _then(_$WalletConnectProviderUpdateSessionEvent(
      sessionUpdate == freezed
          ? _value.sessionUpdate
          : sessionUpdate // ignore: cast_nullable_to_non_nullable
              as WCSessionUpdateResponse,
    ));
  }
}

/// @nodoc

class _$WalletConnectProviderUpdateSessionEvent
    implements WalletConnectProviderUpdateSessionEvent {
  _$WalletConnectProviderUpdateSessionEvent(this.sessionUpdate);

  @override
  final WCSessionUpdateResponse sessionUpdate;

  @override
  String toString() {
    return 'WalletConnectProviderEvent.updateSession(sessionUpdate: $sessionUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectProviderUpdateSessionEvent &&
            const DeepCollectionEquality()
                .equals(other.sessionUpdate, sessionUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionUpdate));

  @JsonKey(ignore: true)
  @override
  _$$WalletConnectProviderUpdateSessionEventCopyWith<
          _$WalletConnectProviderUpdateSessionEvent>
      get copyWith => __$$WalletConnectProviderUpdateSessionEventCopyWithImpl<
          _$WalletConnectProviderUpdateSessionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function(Map<String, dynamic> json) restore,
    required TResult Function() reset,
    required TResult Function(String? displayUri) setDisplayUri,
    required TResult Function(WCSessionUpdateResponse sessionUpdate)
        updateSession,
  }) {
    return updateSession(sessionUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
  }) {
    return updateSession?.call(sessionUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function(Map<String, dynamic> json)? restore,
    TResult Function()? reset,
    TResult Function(String? displayUri)? setDisplayUri,
    TResult Function(WCSessionUpdateResponse sessionUpdate)? updateSession,
    required TResult orElse(),
  }) {
    if (updateSession != null) {
      return updateSession(sessionUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletConnectProviderConnectEvent value) connect,
    required TResult Function(WalletConnectProviderRestoreEvent value) restore,
    required TResult Function(WalletConnectProviderResetEvent value) reset,
    required TResult Function(WalletConnectProviderSetDisplayUriEvent value)
        setDisplayUri,
    required TResult Function(WalletConnectProviderUpdateSessionEvent value)
        updateSession,
  }) {
    return updateSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
  }) {
    return updateSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletConnectProviderConnectEvent value)? connect,
    TResult Function(WalletConnectProviderRestoreEvent value)? restore,
    TResult Function(WalletConnectProviderResetEvent value)? reset,
    TResult Function(WalletConnectProviderSetDisplayUriEvent value)?
        setDisplayUri,
    TResult Function(WalletConnectProviderUpdateSessionEvent value)?
        updateSession,
    required TResult orElse(),
  }) {
    if (updateSession != null) {
      return updateSession(this);
    }
    return orElse();
  }
}

abstract class WalletConnectProviderUpdateSessionEvent
    implements WalletConnectProviderEvent {
  factory WalletConnectProviderUpdateSessionEvent(
          final WCSessionUpdateResponse sessionUpdate) =
      _$WalletConnectProviderUpdateSessionEvent;

  WCSessionUpdateResponse get sessionUpdate;
  @JsonKey(ignore: true)
  _$$WalletConnectProviderUpdateSessionEventCopyWith<
          _$WalletConnectProviderUpdateSessionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletConnectProviderState {
  dynamic get isConnected => throw _privateConstructorUsedError;
  RpcService? get rpcService => throw _privateConstructorUsedError;
  CredentialsWithKnownAddress? get credentials =>
      throw _privateConstructorUsedError;
  String? get displayUri => throw _privateConstructorUsedError;
  WCSessionUpdateResponse? get sessionUpdate =>
      throw _privateConstructorUsedError;

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
      String? displayUri,
      WCSessionUpdateResponse? sessionUpdate});
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
    Object? sessionUpdate = freezed,
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
      sessionUpdate: sessionUpdate == freezed
          ? _value.sessionUpdate
          : sessionUpdate // ignore: cast_nullable_to_non_nullable
              as WCSessionUpdateResponse?,
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
      String? displayUri,
      WCSessionUpdateResponse? sessionUpdate});
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
    Object? sessionUpdate = freezed,
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
      sessionUpdate: sessionUpdate == freezed
          ? _value.sessionUpdate
          : sessionUpdate // ignore: cast_nullable_to_non_nullable
              as WCSessionUpdateResponse?,
    ));
  }
}

/// @nodoc

class _$_WalletConnectProviderState implements _WalletConnectProviderState {
  _$_WalletConnectProviderState(
      {this.isConnected = false,
      this.rpcService,
      this.credentials,
      this.displayUri,
      this.sessionUpdate});

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
  final WCSessionUpdateResponse? sessionUpdate;

  @override
  String toString() {
    return 'WalletConnectProviderState(isConnected: $isConnected, rpcService: $rpcService, credentials: $credentials, displayUri: $displayUri, sessionUpdate: $sessionUpdate)';
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
                .equals(other.displayUri, displayUri) &&
            const DeepCollectionEquality()
                .equals(other.sessionUpdate, sessionUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isConnected),
      const DeepCollectionEquality().hash(rpcService),
      const DeepCollectionEquality().hash(credentials),
      const DeepCollectionEquality().hash(displayUri),
      const DeepCollectionEquality().hash(sessionUpdate));

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
          final String? displayUri,
          final WCSessionUpdateResponse? sessionUpdate}) =
      _$_WalletConnectProviderState;

  @override
  dynamic get isConnected;
  @override
  RpcService? get rpcService;
  @override
  CredentialsWithKnownAddress? get credentials;
  @override
  String? get displayUri;
  @override
  WCSessionUpdateResponse? get sessionUpdate;
  @override
  @JsonKey(ignore: true)
  _$$_WalletConnectProviderStateCopyWith<_$_WalletConnectProviderState>
      get copyWith => throw _privateConstructorUsedError;
}
