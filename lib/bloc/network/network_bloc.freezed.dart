// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res> implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  final NetworkEvent _value;
  // ignore: unused_field
  final $Res Function(NetworkEvent) _then;
}

/// @nodoc
abstract class _$$NetworkSwitchChainEventCopyWith<$Res> {
  factory _$$NetworkSwitchChainEventCopyWith(_$NetworkSwitchChainEvent value,
          $Res Function(_$NetworkSwitchChainEvent) then) =
      __$$NetworkSwitchChainEventCopyWithImpl<$Res>;
  $Res call({ChainModel chain});
}

/// @nodoc
class __$$NetworkSwitchChainEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$$NetworkSwitchChainEventCopyWith<$Res> {
  __$$NetworkSwitchChainEventCopyWithImpl(_$NetworkSwitchChainEvent _value,
      $Res Function(_$NetworkSwitchChainEvent) _then)
      : super(_value, (v) => _then(v as _$NetworkSwitchChainEvent));

  @override
  _$NetworkSwitchChainEvent get _value =>
      super._value as _$NetworkSwitchChainEvent;

  @override
  $Res call({
    Object? chain = freezed,
  }) {
    return _then(_$NetworkSwitchChainEvent(
      chain == freezed
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainModel,
    ));
  }
}

/// @nodoc

class _$NetworkSwitchChainEvent implements NetworkSwitchChainEvent {
  _$NetworkSwitchChainEvent(this.chain);

  @override
  final ChainModel chain;

  @override
  String toString() {
    return 'NetworkEvent.switchChain(chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkSwitchChainEvent &&
            const DeepCollectionEquality().equals(other.chain, chain));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chain));

  @JsonKey(ignore: true)
  @override
  _$$NetworkSwitchChainEventCopyWith<_$NetworkSwitchChainEvent> get copyWith =>
      __$$NetworkSwitchChainEventCopyWithImpl<_$NetworkSwitchChainEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) {
    return switchChain(chain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) {
    return switchChain?.call(chain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (switchChain != null) {
      return switchChain(chain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) {
    return switchChain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) {
    return switchChain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (switchChain != null) {
      return switchChain(this);
    }
    return orElse();
  }
}

abstract class NetworkSwitchChainEvent implements NetworkEvent {
  factory NetworkSwitchChainEvent(final ChainModel chain) =
      _$NetworkSwitchChainEvent;

  ChainModel get chain;
  @JsonKey(ignore: true)
  _$$NetworkSwitchChainEventCopyWith<_$NetworkSwitchChainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkWalletConnectedEventCopyWith<$Res> {
  factory _$$NetworkWalletConnectedEventCopyWith(
          _$NetworkWalletConnectedEvent value,
          $Res Function(_$NetworkWalletConnectedEvent) then) =
      __$$NetworkWalletConnectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkWalletConnectedEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$$NetworkWalletConnectedEventCopyWith<$Res> {
  __$$NetworkWalletConnectedEventCopyWithImpl(
      _$NetworkWalletConnectedEvent _value,
      $Res Function(_$NetworkWalletConnectedEvent) _then)
      : super(_value, (v) => _then(v as _$NetworkWalletConnectedEvent));

  @override
  _$NetworkWalletConnectedEvent get _value =>
      super._value as _$NetworkWalletConnectedEvent;
}

/// @nodoc

class _$NetworkWalletConnectedEvent implements NetworkWalletConnectedEvent {
  _$NetworkWalletConnectedEvent();

  @override
  String toString() {
    return 'NetworkEvent.walletConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkWalletConnectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) {
    return walletConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) {
    return walletConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (walletConnected != null) {
      return walletConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) {
    return walletConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) {
    return walletConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (walletConnected != null) {
      return walletConnected(this);
    }
    return orElse();
  }
}

abstract class NetworkWalletConnectedEvent implements NetworkEvent {
  factory NetworkWalletConnectedEvent() = _$NetworkWalletConnectedEvent;
}

/// @nodoc
abstract class _$$NetworkSetSwitchChainStrategyEventCopyWith<$Res> {
  factory _$$NetworkSetSwitchChainStrategyEventCopyWith(
          _$NetworkSetSwitchChainStrategyEvent value,
          $Res Function(_$NetworkSetSwitchChainStrategyEvent) then) =
      __$$NetworkSetSwitchChainStrategyEventCopyWithImpl<$Res>;
  $Res call({SwitchChainStrategy? switchChainStrategy});
}

/// @nodoc
class __$$NetworkSetSwitchChainStrategyEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$$NetworkSetSwitchChainStrategyEventCopyWith<$Res> {
  __$$NetworkSetSwitchChainStrategyEventCopyWithImpl(
      _$NetworkSetSwitchChainStrategyEvent _value,
      $Res Function(_$NetworkSetSwitchChainStrategyEvent) _then)
      : super(_value, (v) => _then(v as _$NetworkSetSwitchChainStrategyEvent));

  @override
  _$NetworkSetSwitchChainStrategyEvent get _value =>
      super._value as _$NetworkSetSwitchChainStrategyEvent;

  @override
  $Res call({
    Object? switchChainStrategy = freezed,
  }) {
    return _then(_$NetworkSetSwitchChainStrategyEvent(
      switchChainStrategy == freezed
          ? _value.switchChainStrategy
          : switchChainStrategy // ignore: cast_nullable_to_non_nullable
              as SwitchChainStrategy?,
    ));
  }
}

/// @nodoc

class _$NetworkSetSwitchChainStrategyEvent
    implements NetworkSetSwitchChainStrategyEvent {
  _$NetworkSetSwitchChainStrategyEvent(this.switchChainStrategy);

  @override
  final SwitchChainStrategy? switchChainStrategy;

  @override
  String toString() {
    return 'NetworkEvent.setSwitchChainStrategy(switchChainStrategy: $switchChainStrategy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkSetSwitchChainStrategyEvent &&
            const DeepCollectionEquality()
                .equals(other.switchChainStrategy, switchChainStrategy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(switchChainStrategy));

  @JsonKey(ignore: true)
  @override
  _$$NetworkSetSwitchChainStrategyEventCopyWith<
          _$NetworkSetSwitchChainStrategyEvent>
      get copyWith => __$$NetworkSetSwitchChainStrategyEventCopyWithImpl<
          _$NetworkSetSwitchChainStrategyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) {
    return setSwitchChainStrategy(switchChainStrategy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) {
    return setSwitchChainStrategy?.call(switchChainStrategy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (setSwitchChainStrategy != null) {
      return setSwitchChainStrategy(switchChainStrategy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) {
    return setSwitchChainStrategy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) {
    return setSwitchChainStrategy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (setSwitchChainStrategy != null) {
      return setSwitchChainStrategy(this);
    }
    return orElse();
  }
}

abstract class NetworkSetSwitchChainStrategyEvent implements NetworkEvent {
  factory NetworkSetSwitchChainStrategyEvent(
          final SwitchChainStrategy? switchChainStrategy) =
      _$NetworkSetSwitchChainStrategyEvent;

  SwitchChainStrategy? get switchChainStrategy;
  @JsonKey(ignore: true)
  _$$NetworkSetSwitchChainStrategyEventCopyWith<
          _$NetworkSetSwitchChainStrategyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkSetLogoutStrategyEventCopyWith<$Res> {
  factory _$$NetworkSetLogoutStrategyEventCopyWith(
          _$NetworkSetLogoutStrategyEvent value,
          $Res Function(_$NetworkSetLogoutStrategyEvent) then) =
      __$$NetworkSetLogoutStrategyEventCopyWithImpl<$Res>;
  $Res call({Future<void> Function()? logoutStrategy});
}

/// @nodoc
class __$$NetworkSetLogoutStrategyEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$$NetworkSetLogoutStrategyEventCopyWith<$Res> {
  __$$NetworkSetLogoutStrategyEventCopyWithImpl(
      _$NetworkSetLogoutStrategyEvent _value,
      $Res Function(_$NetworkSetLogoutStrategyEvent) _then)
      : super(_value, (v) => _then(v as _$NetworkSetLogoutStrategyEvent));

  @override
  _$NetworkSetLogoutStrategyEvent get _value =>
      super._value as _$NetworkSetLogoutStrategyEvent;

  @override
  $Res call({
    Object? logoutStrategy = freezed,
  }) {
    return _then(_$NetworkSetLogoutStrategyEvent(
      logoutStrategy == freezed
          ? _value.logoutStrategy
          : logoutStrategy // ignore: cast_nullable_to_non_nullable
              as Future<void> Function()?,
    ));
  }
}

/// @nodoc

class _$NetworkSetLogoutStrategyEvent implements NetworkSetLogoutStrategyEvent {
  _$NetworkSetLogoutStrategyEvent(this.logoutStrategy);

  @override
  final Future<void> Function()? logoutStrategy;

  @override
  String toString() {
    return 'NetworkEvent.setLogoutStrategy(logoutStrategy: $logoutStrategy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkSetLogoutStrategyEvent &&
            (identical(other.logoutStrategy, logoutStrategy) ||
                other.logoutStrategy == logoutStrategy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logoutStrategy);

  @JsonKey(ignore: true)
  @override
  _$$NetworkSetLogoutStrategyEventCopyWith<_$NetworkSetLogoutStrategyEvent>
      get copyWith => __$$NetworkSetLogoutStrategyEventCopyWithImpl<
          _$NetworkSetLogoutStrategyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) {
    return setLogoutStrategy(logoutStrategy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) {
    return setLogoutStrategy?.call(logoutStrategy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (setLogoutStrategy != null) {
      return setLogoutStrategy(logoutStrategy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) {
    return setLogoutStrategy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) {
    return setLogoutStrategy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (setLogoutStrategy != null) {
      return setLogoutStrategy(this);
    }
    return orElse();
  }
}

abstract class NetworkSetLogoutStrategyEvent implements NetworkEvent {
  factory NetworkSetLogoutStrategyEvent(
          final Future<void> Function()? logoutStrategy) =
      _$NetworkSetLogoutStrategyEvent;

  Future<void> Function()? get logoutStrategy;
  @JsonKey(ignore: true)
  _$$NetworkSetLogoutStrategyEventCopyWith<_$NetworkSetLogoutStrategyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkLogoutEventCopyWith<$Res> {
  factory _$$NetworkLogoutEventCopyWith(_$NetworkLogoutEvent value,
          $Res Function(_$NetworkLogoutEvent) then) =
      __$$NetworkLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkLogoutEventCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements _$$NetworkLogoutEventCopyWith<$Res> {
  __$$NetworkLogoutEventCopyWithImpl(
      _$NetworkLogoutEvent _value, $Res Function(_$NetworkLogoutEvent) _then)
      : super(_value, (v) => _then(v as _$NetworkLogoutEvent));

  @override
  _$NetworkLogoutEvent get _value => super._value as _$NetworkLogoutEvent;
}

/// @nodoc

class _$NetworkLogoutEvent implements NetworkLogoutEvent {
  _$NetworkLogoutEvent();

  @override
  String toString() {
    return 'NetworkEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChainModel chain) switchChain,
    required TResult Function() walletConnected,
    required TResult Function(SwitchChainStrategy? switchChainStrategy)
        setSwitchChainStrategy,
    required TResult Function(Future<void> Function()? logoutStrategy)
        setLogoutStrategy,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChainModel chain)? switchChain,
    TResult Function()? walletConnected,
    TResult Function(SwitchChainStrategy? switchChainStrategy)?
        setSwitchChainStrategy,
    TResult Function(Future<void> Function()? logoutStrategy)?
        setLogoutStrategy,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkSwitchChainEvent value) switchChain,
    required TResult Function(NetworkWalletConnectedEvent value)
        walletConnected,
    required TResult Function(NetworkSetSwitchChainStrategyEvent value)
        setSwitchChainStrategy,
    required TResult Function(NetworkSetLogoutStrategyEvent value)
        setLogoutStrategy,
    required TResult Function(NetworkLogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkSwitchChainEvent value)? switchChain,
    TResult Function(NetworkWalletConnectedEvent value)? walletConnected,
    TResult Function(NetworkSetSwitchChainStrategyEvent value)?
        setSwitchChainStrategy,
    TResult Function(NetworkSetLogoutStrategyEvent value)? setLogoutStrategy,
    TResult Function(NetworkLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class NetworkLogoutEvent implements NetworkEvent {
  factory NetworkLogoutEvent() = _$NetworkLogoutEvent;
}

/// @nodoc
mixin _$NetworkState {
  ChainModel get currentChain => throw _privateConstructorUsedError;
  bool get hasWalletConnection => throw _privateConstructorUsedError;
  SwitchChainStrategy? get switchChainStrategy =>
      throw _privateConstructorUsedError;
  Future<void> Function()? get logoutStrategy =>
      throw _privateConstructorUsedError;
  bool get switchChainRejected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
  $Res call(
      {ChainModel currentChain,
      bool hasWalletConnection,
      SwitchChainStrategy? switchChainStrategy,
      Future<void> Function()? logoutStrategy,
      bool switchChainRejected});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;

  @override
  $Res call({
    Object? currentChain = freezed,
    Object? hasWalletConnection = freezed,
    Object? switchChainStrategy = freezed,
    Object? logoutStrategy = freezed,
    Object? switchChainRejected = freezed,
  }) {
    return _then(_value.copyWith(
      currentChain: currentChain == freezed
          ? _value.currentChain
          : currentChain // ignore: cast_nullable_to_non_nullable
              as ChainModel,
      hasWalletConnection: hasWalletConnection == freezed
          ? _value.hasWalletConnection
          : hasWalletConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      switchChainStrategy: switchChainStrategy == freezed
          ? _value.switchChainStrategy
          : switchChainStrategy // ignore: cast_nullable_to_non_nullable
              as SwitchChainStrategy?,
      logoutStrategy: logoutStrategy == freezed
          ? _value.logoutStrategy
          : logoutStrategy // ignore: cast_nullable_to_non_nullable
              as Future<void> Function()?,
      switchChainRejected: switchChainRejected == freezed
          ? _value.switchChainRejected
          : switchChainRejected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NetworkStateCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$$_NetworkStateCopyWith(
          _$_NetworkState value, $Res Function(_$_NetworkState) then) =
      __$$_NetworkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChainModel currentChain,
      bool hasWalletConnection,
      SwitchChainStrategy? switchChainStrategy,
      Future<void> Function()? logoutStrategy,
      bool switchChainRejected});
}

/// @nodoc
class __$$_NetworkStateCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements _$$_NetworkStateCopyWith<$Res> {
  __$$_NetworkStateCopyWithImpl(
      _$_NetworkState _value, $Res Function(_$_NetworkState) _then)
      : super(_value, (v) => _then(v as _$_NetworkState));

  @override
  _$_NetworkState get _value => super._value as _$_NetworkState;

  @override
  $Res call({
    Object? currentChain = freezed,
    Object? hasWalletConnection = freezed,
    Object? switchChainStrategy = freezed,
    Object? logoutStrategy = freezed,
    Object? switchChainRejected = freezed,
  }) {
    return _then(_$_NetworkState(
      currentChain: currentChain == freezed
          ? _value.currentChain
          : currentChain // ignore: cast_nullable_to_non_nullable
              as ChainModel,
      hasWalletConnection: hasWalletConnection == freezed
          ? _value.hasWalletConnection
          : hasWalletConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      switchChainStrategy: switchChainStrategy == freezed
          ? _value.switchChainStrategy
          : switchChainStrategy // ignore: cast_nullable_to_non_nullable
              as SwitchChainStrategy?,
      logoutStrategy: logoutStrategy == freezed
          ? _value.logoutStrategy
          : logoutStrategy // ignore: cast_nullable_to_non_nullable
              as Future<void> Function()?,
      switchChainRejected: switchChainRejected == freezed
          ? _value.switchChainRejected
          : switchChainRejected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkState implements _NetworkState {
  _$_NetworkState(
      {required this.currentChain,
      this.hasWalletConnection = false,
      this.switchChainStrategy,
      this.logoutStrategy,
      this.switchChainRejected = false});

  @override
  final ChainModel currentChain;
  @override
  @JsonKey()
  final bool hasWalletConnection;
  @override
  final SwitchChainStrategy? switchChainStrategy;
  @override
  final Future<void> Function()? logoutStrategy;
  @override
  @JsonKey()
  final bool switchChainRejected;

  @override
  String toString() {
    return 'NetworkState(currentChain: $currentChain, hasWalletConnection: $hasWalletConnection, switchChainStrategy: $switchChainStrategy, logoutStrategy: $logoutStrategy, switchChainRejected: $switchChainRejected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkState &&
            const DeepCollectionEquality()
                .equals(other.currentChain, currentChain) &&
            const DeepCollectionEquality()
                .equals(other.hasWalletConnection, hasWalletConnection) &&
            const DeepCollectionEquality()
                .equals(other.switchChainStrategy, switchChainStrategy) &&
            (identical(other.logoutStrategy, logoutStrategy) ||
                other.logoutStrategy == logoutStrategy) &&
            const DeepCollectionEquality()
                .equals(other.switchChainRejected, switchChainRejected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentChain),
      const DeepCollectionEquality().hash(hasWalletConnection),
      const DeepCollectionEquality().hash(switchChainStrategy),
      logoutStrategy,
      const DeepCollectionEquality().hash(switchChainRejected));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      __$$_NetworkStateCopyWithImpl<_$_NetworkState>(this, _$identity);
}

abstract class _NetworkState implements NetworkState {
  factory _NetworkState(
      {required final ChainModel currentChain,
      final bool hasWalletConnection,
      final SwitchChainStrategy? switchChainStrategy,
      final Future<void> Function()? logoutStrategy,
      final bool switchChainRejected}) = _$_NetworkState;

  @override
  ChainModel get currentChain;
  @override
  bool get hasWalletConnection;
  @override
  SwitchChainStrategy? get switchChainStrategy;
  @override
  Future<void> Function()? get logoutStrategy;
  @override
  bool get switchChainRejected;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
