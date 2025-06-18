import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/referee.dart';
import 'package:fhcs/features/loans/repository/contract/iloan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referees_state.dart';
part 'referees_cubit.freezed.dart';

class RefereesCubit extends Cubit<RefereesState> {
  final ILoanRepository loanRepository;
  RefereesCubit({required this.loanRepository})
      : super(RefereesState.initial());
  List<RefereeData> data = [];

  Future<void> fetchReferees() async {
    emit(RefereesState.loading());
    final response = await loanRepository.fetchReferees();
    response.fold((l) => emit(RefereesState.failure(error: l.failureMessage())),
        (r) {
      data = r.data as List<RefereeData>;
      emit(RefereesState.success(response: r.data as List<RefereeData>));
    });
  }

  void searchReferee(String query) {
    emit(RefereesState.loading());
    if (query.isEmpty) {
      emit(RefereesState.success(response: data));
    } else {
      List<RefereeData> result = data
          .where((referee) =>
              (referee.firstName ?? "")
                  .toString()
                  .toLowerCase()
                  .contains(query) ||
              (referee.lastName ?? "")
                  .toString()
                  .toLowerCase()
                  .contains(query) ||
              (referee.irNumber ?? "").toString().toLowerCase().contains(query))
          .toList();
      emit(RefereesState.success(response: result));
    }
  }
}
