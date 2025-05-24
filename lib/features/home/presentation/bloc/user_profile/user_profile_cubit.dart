import 'package:fhcs/core/data/user_info.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final IHomeRepository homeRepository;
  UserProfileCubit({required this.homeRepository})
      : super(UserProfileState.initial());

  Future<void> fetchUserProfile() async {
    try {
      emit(UserProfileState.loading());
      final response = await homeRepository.userProfile();
      response.fold(
        (failure) =>
            emit(UserProfileState.failure(error: failure.failureMessage())),
        (data) =>
            emit(UserProfileState.success(response: data.data as UserInfoData)),
      );
    } catch (e) {
      emit(UserProfileState.failure(error: e.toString()));
    }
  }
}
