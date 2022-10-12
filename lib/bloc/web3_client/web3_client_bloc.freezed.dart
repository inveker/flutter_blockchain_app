// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'web3_client_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Web3ClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Web3Client client) set,
    required TResult Function(RpcService rpc) createFromRpc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Web3ClientSetEvent value) set,
    required TResult Function(Web3ClientCreateFromRpcEvent value) createFromRpc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3ClientEventCopyWith<$Res> {
  factory $Web3ClientEventCopyWith(
          Web3ClientEvent value, $Res Function(Web3ClientEvent) then) =
      _$Web3ClientEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$Web3ClientEventCopyWithImpl<$Res>
    implements $Web3ClientEventCopyWith<$Res> {
  _$Web3ClientEventCopyWithImpl(this._value, this._then);

  final Web3ClientEvent _value;
  // ignore: unused_field
  final $Res Function(Web3ClientEvent) _then;
}

/// @nodoc
abstract class _$$Web3ClientSetEventCopyWith<$Res> {
  factory _$$Web3ClientSetEventCopyWith(_$Web3ClientSetEvent value,
          $Res Function(_$Web3ClientSetEvent) then) =
      __$$Web3ClientSetEventCopyWithImpl<$Res>;
  $Res call({Web3Client client});
}

/// @nodoc
class __$$Web3ClientSetEventCopyWithImpl<$Res>
    extends _$Web3ClientEventCopyWithImpl<$Res>
    implements _$$Web3ClientSetEventCopyWith<$Res> {
  __$$Web3ClientSetEventCopyWithImpl(
      _$Web3ClientSetEvent _value, $Res Function(_$Web3ClientSetEvent) _then)
      : super(_value, (v) => _then(v as _$Web3ClientSetEvent));

  @override
  _$Web3ClientSetEvent get _value => super._value as _$Web3ClientSetEvent;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_$Web3ClientSetEvent(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Web3Client,
    ));
  }
}

/// @nodoc

class _$Web3ClientSetEvent implements Web3ClientSetEvent {
  _$Web3ClientSetEvent(this.client);

  @override
  final Web3Client client;

  @override
  String toString() {
    return 'Web3ClientEvent.set(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Web3ClientSetEvent &&
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(client));

  @JsonKey(ignore: true)
  @override
  _$$Web3ClientSetEventCopyWith<_$Web3ClientSetEvent> get copyWith =>
      __$$Web3ClientSetEventCopyWithImpl<_$Web3ClientSetEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Web3Client client) set,
    required TResult Function(RpcService rpc) createFromRpc,
  }) {
    return set(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
  }) {
    return set?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Web3ClientSetEvent value) set,
    required TResult Function(Web3ClientCreateFromRpcEvent value) createFromRpc,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class Web3ClientSetEvent implements Web3ClientEvent {
  factory Web3ClientSetEvent(final Web3Client client) = _$Web3ClientSetEvent;

  Web3Client get client;
  @JsonKey(ignore: true)
  _$$Web3ClientSetEventCopyWith<_$Web3ClientSetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Web3ClientCreateFromRpcEventCopyWith<$Res> {
  factory _$$Web3ClientCreateFromRpcEventCopyWith(
          _$Web3ClientCreateFromRpcEvent value,
          $Res Function(_$Web3ClientCreateFromRpcEvent) then) =
      __$$Web3ClientCreateFromRpcEventCopyWithImpl<$Res>;
  $Res call({RpcService rpc});
}

/// @nodoc
class __$$Web3ClientCreateFromRpcEventCopyWithImpl<$Res>
    extends _$Web3ClientEventCopyWithImpl<$Res>
    implements _$$Web3ClientCreateFromRpcEventCopyWith<$Res> {
  __$$Web3ClientCreateFromRpcEventCopyWithImpl(
      _$Web3ClientCreateFromRpcEvent _value,
      $Res Function(_$Web3ClientCreateFromRpcEvent) _then)
      : super(_value, (v) => _then(v as _$Web3ClientCreateFromRpcEvent));

  @override
  _$Web3ClientCreateFromRpcEvent get _value =>
      super._value as _$Web3ClientCreateFromRpcEvent;

  @override
  $Res call({
    Object? rpc = freezed,
  }) {
    return _then(_$Web3ClientCreateFromRpcEvent(
      rpc == freezed
          ? _value.rpc
          : rpc // ignore: cast_nullable_to_non_nullable
              as RpcService,
    ));
  }
}

/// @nodoc

class _$Web3ClientCreateFromRpcEvent implements Web3ClientCreateFromRpcEvent {
  _$Web3ClientCreateFromRpcEvent(this.rpc);

  @override
  final RpcService rpc;

  @override
  String toString() {
    return 'Web3ClientEvent.createFromRpc(rpc: $rpc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Web3ClientCreateFromRpcEvent &&
            const DeepCollectionEquality().equals(other.rpc, rpc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rpc));

  @JsonKey(ignore: true)
  @override
  _$$Web3ClientCreateFromRpcEventCopyWith<_$Web3ClientCreateFromRpcEvent>
      get copyWith => __$$Web3ClientCreateFromRpcEventCopyWithImpl<
          _$Web3ClientCreateFromRpcEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Web3Client client) set,
    required TResult Function(RpcService rpc) createFromRpc,
  }) {
    return createFromRpc(rpc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
  }) {
    return createFromRpc?.call(rpc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Web3Client client)? set,
    TResult Function(RpcService rpc)? createFromRpc,
    required TResult orElse(),
  }) {
    if (createFromRpc != null) {
      return createFromRpc(rpc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Web3ClientSetEvent value) set,
    required TResult Function(Web3ClientCreateFromRpcEvent value) createFromRpc,
  }) {
    return createFromRpc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
  }) {
    return createFromRpc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Web3ClientSetEvent value)? set,
    TResult Function(Web3ClientCreateFromRpcEvent value)? createFromRpc,
    required TResult orElse(),
  }) {
    if (createFromRpc != null) {
      return createFromRpc(this);
    }
    return orElse();
  }
}

abstract class Web3ClientCreateFromRpcEvent implements Web3ClientEvent {
  factory Web3ClientCreateFromRpcEvent(final RpcService rpc) =
      _$Web3ClientCreateFromRpcEvent;

  RpcService get rpc;
  @JsonKey(ignore: true)
  _$$Web3ClientCreateFromRpcEventCopyWith<_$Web3ClientCreateFromRpcEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Web3ClientState {
  Web3Client? get client => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Web3ClientStateCopyWith<Web3ClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3ClientStateCopyWith<$Res> {
  factory $Web3ClientStateCopyWith(
          Web3ClientState value, $Res Function(Web3ClientState) then) =
      _$Web3ClientStateCopyWithImpl<$Res>;
  $Res call({Web3Client? client});
}

/// @nodoc
class _$Web3ClientStateCopyWithImpl<$Res>
    implements $Web3ClientStateCopyWith<$Res> {
  _$Web3ClientStateCopyWithImpl(this._value, this._then);

  final Web3ClientState _value;
  // ignore: unused_field
  final $Res Function(Web3ClientState) _then;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Web3Client?,
    ));
  }
}

/// @nodoc
abstract class _$$_Web3ClientStateCopyWith<$Res>
    implements $Web3ClientStateCopyWith<$Res> {
  factory _$$_Web3ClientStateCopyWith(
          _$_Web3ClientState value, $Res Function(_$_Web3ClientState) then) =
      __$$_Web3ClientStateCopyWithImpl<$Res>;
  @override
  $Res call({Web3Client? client});
}

/// @nodoc
class __$$_Web3ClientStateCopyWithImpl<$Res>
    extends _$Web3ClientStateCopyWithImpl<$Res>
    implements _$$_Web3ClientStateCopyWith<$Res> {
  __$$_Web3ClientStateCopyWithImpl(
      _$_Web3ClientState _value, $Res Function(_$_Web3ClientState) _then)
      : super(_value, (v) => _then(v as _$_Web3ClientState));

  @override
  _$_Web3ClientState get _value => super._value as _$_Web3ClientState;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_$_Web3ClientState(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Web3Client?,
    ));
  }
}

/// @nodoc

class _$_Web3ClientState implements _Web3ClientState {
  _$_Web3ClientState({this.client});

  @override
  final Web3Client? client;

  @override
  String toString() {
    return 'Web3ClientState(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Web3ClientState &&
            const DeepCollectionEquality().equals(other.client, client));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(client));

  @JsonKey(ignore: true)
  @override
  _$$_Web3ClientStateCopyWith<_$_Web3ClientState> get copyWith =>
      __$$_Web3ClientStateCopyWithImpl<_$_Web3ClientState>(this, _$identity);
}

abstract class _Web3ClientState implements Web3ClientState {
  factory _Web3ClientState({final Web3Client? client}) = _$_Web3ClientState;

  @override
  Web3Client? get client;
  @override
  @JsonKey(ignore: true)
  _$$_Web3ClientStateCopyWith<_$_Web3ClientState> get copyWith =>
      throw _privateConstructorUsedError;
}
