// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_counter_timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoreCounterTimerState {
  StopWatchTimer? get stopWatchTimer => throw _privateConstructorUsedError;
  BooleanStatus get stopWatchTimerStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreCounterTimerStateCopyWith<CoreCounterTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCounterTimerStateCopyWith<$Res> {
  factory $CoreCounterTimerStateCopyWith(CoreCounterTimerState value,
          $Res Function(CoreCounterTimerState) then) =
      _$CoreCounterTimerStateCopyWithImpl<$Res, CoreCounterTimerState>;
  @useResult
  $Res call(
      {StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus});
}

/// @nodoc
class _$CoreCounterTimerStateCopyWithImpl<$Res,
        $Val extends CoreCounterTimerState>
    implements $CoreCounterTimerStateCopyWith<$Res> {
  _$CoreCounterTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopWatchTimer = freezed,
    Object? stopWatchTimerStatus = null,
  }) {
    return _then(_value.copyWith(
      stopWatchTimer: freezed == stopWatchTimer
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as StopWatchTimer?,
      stopWatchTimerStatus: null == stopWatchTimerStatus
          ? _value.stopWatchTimerStatus
          : stopWatchTimerStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CoreCounterTimerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoreCounterTimerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopWatchTimer = freezed,
    Object? stopWatchTimerStatus = null,
  }) {
    return _then(_$InitialImpl(
      stopWatchTimer: freezed == stopWatchTimer
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as StopWatchTimer?,
      stopWatchTimerStatus: null == stopWatchTimerStatus
          ? _value.stopWatchTimerStatus
          : stopWatchTimerStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.stopWatchTimer, this.stopWatchTimerStatus = BooleanStatus.running});

  @override
  final StopWatchTimer? stopWatchTimer;
  @override
  @JsonKey()
  final BooleanStatus stopWatchTimerStatus;

  @override
  String toString() {
    return 'CoreCounterTimerState.initial(stopWatchTimer: $stopWatchTimer, stopWatchTimerStatus: $stopWatchTimerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stopWatchTimer, stopWatchTimer) ||
                other.stopWatchTimer == stopWatchTimer) &&
            (identical(other.stopWatchTimerStatus, stopWatchTimerStatus) ||
                other.stopWatchTimerStatus == stopWatchTimerStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stopWatchTimer, stopWatchTimerStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)
        initial,
  }) {
    return initial(stopWatchTimer, stopWatchTimerStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)?
        initial,
  }) {
    return initial?.call(stopWatchTimer, stopWatchTimerStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StopWatchTimer? stopWatchTimer, BooleanStatus stopWatchTimerStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stopWatchTimer, stopWatchTimerStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoreCounterTimerState {
  const factory _Initial(
      {final StopWatchTimer? stopWatchTimer,
      final BooleanStatus stopWatchTimerStatus}) = _$InitialImpl;

  @override
  StopWatchTimer? get stopWatchTimer;
  @override
  BooleanStatus get stopWatchTimerStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
