import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_funding_state.dart';
part 'verify_funding_cubit.freezed.dart';

class VerifyFundingCubit extends Cubit<VerifyFundingState> {
  final IHomeRepository homeRepository;
  VerifyFundingCubit({required this.homeRepository})
      : super(VerifyFundingState.initial());

  Future<void> verifyFunding(String refId) async {
    emit(const VerifyFundingState.loading());
    final result = await homeRepository.verifyFunding(refId);
    result.fold(
      (failure) =>
          emit(VerifyFundingState.failure(error: failure.failureMessage())),
      (response) => emit(VerifyFundingState.success(
          response: response.data as PaymentInfoData)),
    );
  }
}
