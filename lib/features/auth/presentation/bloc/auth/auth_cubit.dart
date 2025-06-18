import 'dart:developer';
import 'dart:io';

import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/accounts/presentation/bloc/account_details/account_details_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/dashboard/dashboard_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/transactions/transactions_cubit.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/investments/presentation/bloc/investment_type/investment_type_cubit.dart';
import 'package:fhcs/features/loans/presentation/bloc/referee_request/referee_request_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/data/auth_info.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/personal_info.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository authRepository;
  AuthCubit({required this.authRepository}) : super(AuthState.initial());

  Future<void> register(Map<String, dynamic> payload, File file) async {
    try {
      emit(AuthState.loading());
      final response = await authRepository.register(payload, file);
      response.fold((l) => emit(AuthState.failure(error: l.failureMessage())),
          (r) {
        if (r.data?.token != null) {
          authRepository.saveToken(r.data!.token!);
          emit(AuthState.success(response: null));
        } else {
          // return r.data?.data;
          emit(AuthState.success(response: r.data?.data));
        }
      });
    } catch (e) {
      emit(AuthState.failure(error: e.toString()));
    }
  }

  Future<void> verifyOtp(Map<String, dynamic> payload) async {
    try {
      emit(AuthState.verifyLoading());
      final response = await authRepository.verifyOtp(payload);
      response.fold(
          (l) => emit(AuthState.verifyFailure(error: l.failureMessage())), (r) {
        if (r.metadata != null && r.metadata!.containsKey('regToken')) {
          authRepository.saveRegistrationToken(r.metadata?['regToken']);
          authRepository.clearToken();
        }
        emit(AuthState.verifySuccess(response: r.data as InfoData));
      });
    } catch (e) {
      emit(AuthState.verifyFailure(error: e.toString()));
    }
  }

  Future<void> nokDetail(Map<String, dynamic> payload) async {
    try {
      emit(AuthState.nokLoading());
      final response = await authRepository.nokDetail(payload);
      response.fold(
          (l) => emit(AuthState.nokFailure(error: l.failureMessage())), (r) {
        if (r.metadata != null && r.metadata!.containsKey('regToken')) {
          authRepository.saveRegistrationToken(r.metadata?['regToken']);
        }
        emit(AuthState.nokSuccess(response: r.data as InfoData));
      });
    } catch (e) {
      emit(AuthState.nokFailure(error: e.toString()));
    }
  }

  Future<void> bankDetail(Map<String, dynamic> payload) async {
    try {
      emit(AuthState.bankLoading());
      final response = await authRepository.bankDetail(payload);
      response.fold(
          (l) => emit(AuthState.bankFailure(error: l.failureMessage())), (r) {
        if (r.metadata != null && r.metadata!.containsKey('regToken')) {
          authRepository.saveRegistrationToken(r.metadata?['regToken']);
        }
        emit(AuthState.bankSuccess(response: r.data as InfoData));
      });
    } catch (e) {
      emit(AuthState.bankFailure(error: e.toString()));
    }
  }

  Future<void> setPassword(Map<String, dynamic> payload) async {
    try {
      emit(AuthState.passwordLoading());
      final response = await authRepository.setPassword(payload);
      response.fold(
          (l) => emit(AuthState.passwordFailure(error: l.failureMessage())),
          (r) {
        if (r.metadata != null && r.metadata!.containsKey('regToken')) {
          authRepository.saveRegistrationToken(r.metadata?['regToken']);
        }
        emit(AuthState.passwordSuccess(response: r.data as String));
      });
    } catch (e) {
      emit(AuthState.passwordFailure(error: e.toString()));
    }
  }

  Future<void> login(Map<String, dynamic> payload) async {
    try {
      emit(AuthState.loginLoading());
      final response = await authRepository.login(payload);
      response
          .fold((l) => emit(AuthState.loginFailure(error: l.failureMessage())),
              (r) async {
        await authRepository.saveAuthToken(
            accessToken: (r.data as LoginData).accessToken,
            refreshToken: (r.data as LoginData).refreshToken);
        await authRepository.saveBasicUserDetail(
            fullName: (r.data as LoginData).fullName,
            username: (r.data as LoginData).username);
        emit(AuthState.loginSuccess(response: r.data as LoginData));
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<UserProfileCubit>()
            .fetchUserProfile();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<DashboardCubit>()
            .fetchDashboardData();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<TransactionsCubit>()
            .fetchTransactions();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<InvestmentTypeCubit>()
            .fetchInvestmentType();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<RefereeRequestCubit>()
            .fetchRefereeRequest();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<LoanRefereeRequestCubit>()
            .fetchRefereeRequest();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<InvestmentRefereeRequestCubit>()
            .fetchRefereeRequest();
        GlobalVariables.rootNavigatorKey.currentContext!
            .read<AccountDetailsCubit>()
            .fetchAccountDetail();
      });
    } catch (e) {
      emit(AuthState.loginFailure(error: e.toString()));
    }
  }

  Future<void> logout() async {
    try {
      emit(AuthState.logoutLoading());
      await authRepository.clearToken();
      await authRepository.saveBasicUserDetail(fullName: '', username: '');
      emit(AuthState.logoutSuccess());
    } catch (e) {
      log('Logout Error: $e');
      emit(AuthState.logoutFailure(error: e.toString()));
    }
  }
}
