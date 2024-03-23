// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      imageId: json['image_id'] as String?,
      imageType: json['image_type'] as String?,
      reference: json['reference'] as String?,
      uploadedFile: json['uploaded_file'] == null
          ? null
          : UploadedFile.fromJson(
              json['uploaded_file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'image_id': instance.imageId,
      'image_type': instance.imageType,
      'reference': instance.reference,
      'uploaded_file': instance.uploadedFile,
    };

UploadedFile _$UploadedFileFromJson(Map<String, dynamic> json) => UploadedFile(
      fileLink: json['file_link'] as String?,
      fileName: json['file_name'] as String?,
      filePath: json['file_path'] as String?,
      fileServiceData: json['file_service_data'] as String?,
      uploadedFileId: json['uploaded_file_id'] as String?,
    );

Map<String, dynamic> _$UploadedFileToJson(UploadedFile instance) =>
    <String, dynamic>{
      'file_link': instance.fileLink,
      'file_name': instance.fileName,
      'file_path': instance.filePath,
      'file_service_data': instance.fileServiceData,
      'uploaded_file_id': instance.uploadedFileId,
    };
