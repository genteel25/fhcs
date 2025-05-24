import 'package:bloc/bloc.dart';
import 'package:fhcs/core/data/dashboard.dart';
import 'package:fhcs/features/home/repository/contract/ihome_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final IHomeRepository homeRepository;
  DashboardCubit({required this.homeRepository})
      : super(DashboardState.initial());
  DashboardData? dashboardData;

  Future<void> fetchDashboardData() async {
    emit(const DashboardState.loading());
    final response = await homeRepository.fetchDashboardData();
    response.fold(
      (failure) =>
          emit(DashboardState.failure(error: failure.failureMessage())),
      (data) {
        dashboardData = data.data as DashboardData;
        emit(DashboardState.success(response: data.data as DashboardData));
      },
    );
  }
}
