part of 'core_image_picker_cubit.dart';

@freezed
class CoreImagePickerState with _$CoreImagePickerState {
  const factory CoreImagePickerState.initial({
    XFile? xFile,
    @Default(BooleanStatus.pending)BooleanStatus imagePickerStatus
}) = _Initial;
}
