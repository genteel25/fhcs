import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_state.dart';
part 'upload_file_cubit.freezed.dart';

class UploadFileCubit extends Cubit<UploadFileState> {
  final IAuthRepository authRepository;
  UploadFileCubit({required this.authRepository})
      : super(UploadFileState.initial());
  Future<void> uploadFile(File file) async {
    emit(UploadFileState.loading());
    final response = await authRepository.uploadFile(file);
    response.fold(
        (l) => emit(UploadFileState.failure(error: l.failureMessage())),
        (r) => emit(UploadFileState.success(response: r.data as String)));
  }
}
