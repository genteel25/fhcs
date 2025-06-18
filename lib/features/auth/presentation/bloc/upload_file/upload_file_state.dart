part of 'upload_file_cubit.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const factory UploadFileState.initial() = _Initial;
  const factory UploadFileState.loading() = _Loading;
  const factory UploadFileState.success({required String response}) = _Success;
  const factory UploadFileState.failure({required String error}) = _Failure;
}
