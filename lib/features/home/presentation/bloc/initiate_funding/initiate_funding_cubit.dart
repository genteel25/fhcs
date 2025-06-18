import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_funding_state.dart';
part 'initiate_funding_cubit.freezed.dart';

class InitiateFundingCubit extends Cubit<InitiateFundingState> {
  final IHomeRepository homeRepository;
  InitiateFundingCubit({required this.homeRepository})
      : super(InitiateFundingState.initial());

  Future<void> initiateFunding(Map<String, dynamic> payload) async {
    emit(const InitiateFundingState.loading());
    final result = await homeRepository.initiateFunding(payload);
    result.fold(
      (failure) =>
          emit(InitiateFundingState.failure(error: failure.failureMessage())),
      (response) => emit(InitiateFundingState.success(
          response: response.data as PaymentInfoData)),
    );
  }
}
