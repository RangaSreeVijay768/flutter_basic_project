import 'package:freezed_annotation/freezed_annotation.dart';

part 'Image.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Image {
  String? imageId;
  String? imageType;
  String? reference;
  UploadedFile? uploadedFile;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  Image({this.imageId, this.imageType, this.reference, this.uploadedFile});
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UploadedFile {
  String? fileLink;
  String? fileName;
  String? filePath;
  String? fileServiceData;
  String? uploadedFileId;

  factory UploadedFile.fromJson(Map<String, dynamic> json) =>
      _$UploadedFileFromJson(json);

  Map<String, dynamic> toJson() => _$UploadedFileToJson(this);

  UploadedFile(
      {this.fileLink,
      this.fileName,
      this.filePath,
      this.fileServiceData,
      this.uploadedFileId});
}
