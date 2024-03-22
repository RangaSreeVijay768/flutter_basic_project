// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_image_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoreImagePickerState {
  XFile? get xFile => throw _privateConstructorUsedError;
  BooleanStatus get imagePickerStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? xFile, BooleanStatus imagePickerStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? xFile, BooleanStatus imagePickerStatus)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? xFile, BooleanStatus imagePickerStatus)? initial,
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
  $CoreImagePickerStateCopyWith<CoreImagePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreImagePickerStateCopyWith<$Res> {
  factory $CoreImagePickerStateCopyWith(CoreImagePickerState value,
          $Res Function(CoreImagePickerState) then) =
      _$CoreImagePickerStateCopyWithImpl<$Res, CoreImagePickerState>;
  @useResult
  $Res call({XFile? xFile, BooleanStatus imagePickerStatus});
}

/// @nodoc
class _$CoreImagePickerStateCopyWithImpl<$Res,
        $Val extends CoreImagePickerState>
    implements $CoreImagePickerStateCopyWith<$Res> {
  _$CoreImagePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xFile = freezed,
    Object? imagePickerStatus = null,
  }) {
    return _then(_value.copyWith(
      xFile: freezed == xFile
          ? _value.xFile
          : xFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imagePickerStatus: null == imagePickerStatus
          ? _value.imagePickerStatus
          : imagePickerStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CoreImagePickerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({XFile? xFile, BooleanStatus imagePickerStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoreImagePickerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xFile = freezed,
    Object? imagePickerStatus = null,
  }) {
    return _then(_$InitialImpl(
      xFile: freezed == xFile
          ? _value.xFile
          : xFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imagePickerStatus: null == imagePickerStatus
          ? _value.imagePickerStatus
          : imagePickerStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.xFile, this.imagePickerStatus = BooleanStatus.pending});

  @override
  final XFile? xFile;
  @override
  @JsonKey()
  final BooleanStatus imagePickerStatus;

  @override
  String toString() {
    return 'CoreImagePickerState.initial(xFile: $xFile, imagePickerStatus: $imagePickerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.xFile, xFile) || other.xFile == xFile) &&
            (identical(other.imagePickerStatus, imagePickerStatus) ||
                other.imagePickerStatus == imagePickerStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, xFile, imagePickerStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? xFile, BooleanStatus imagePickerStatus)
        initial,
  }) {
    return initial(xFile, imagePickerStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? xFile, BooleanStatus imagePickerStatus)? initial,
  }) {
    return initial?.call(xFile, imagePickerStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? xFile, BooleanStatus imagePickerStatus)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(xFile, imagePickerStatus);
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

abstract class _Initial implements CoreImagePickerState {
  const factory _Initial(
      {final XFile? xFile,
      final BooleanStatus imagePickerStatus}) = _$InitialImpl;

  @override
  XFile? get xFile;
  @override
  BooleanStatus get imagePickerStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
