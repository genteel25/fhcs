import 'dart:io';

import 'package:fhcs/config/di/app_initializer.dart';
import 'package:fhcs/core/data/investment_type.dart';
import 'package:fhcs/core/data/loan.dart';
import 'package:fhcs/core/data/payment.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_breakdown.dart';
import 'package:fhcs/features/auth/presentation/controllers/splash.dart';
import 'package:fhcs/features/home/presentation/controllers/profile.dart';
import 'package:fhcs/features/investments/presentation/controllers/apply_for_investments.dart';
import 'package:fhcs/features/investments/presentation/controllers/investment_detail.dart';
import 'package:fhcs/features/investments/presentation/controllers/select_vendor.dart';
import 'package:fhcs/features/loans/presentation/controllers/active_loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/select_witness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:fhcs/core/components/custom_scaffold_menu.dart';
import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/accounts/presentation/controllers/accounts.dart';
import 'package:fhcs/features/accounts/presentation/controllers/statement.dart';
import 'package:fhcs/features/auth/presentation/controllers/create_password.dart';
import 'package:fhcs/features/auth/presentation/controllers/enter_otp.dart';
import 'package:fhcs/features/auth/presentation/controllers/kyc.dart';
import 'package:fhcs/features/auth/presentation/controllers/login.dart';
import 'package:fhcs/features/auth/presentation/controllers/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/controllers/next_of_kin.dart';
import 'package:fhcs/features/auth/presentation/controllers/onboarding.dart';
import 'package:fhcs/features/auth/presentation/controllers/set_transaction_pin.dart';
import 'package:fhcs/features/auth/presentation/controllers/signup.dart';
import 'package:fhcs/features/auth/presentation/controllers/withdrawal_bank.dart';
import 'package:fhcs/features/home/presentation/controllers/add_money.dart';
import 'package:fhcs/features/home/presentation/controllers/card_deposit.dart';
import 'package:fhcs/features/home/presentation/controllers/deposit_fund.dart';
import 'package:fhcs/features/home/presentation/controllers/home.dart';
import 'package:fhcs/features/home/presentation/controllers/withdraw_from.dart';
import 'package:fhcs/features/home/presentation/controllers/withdraw_funds.dart';
import 'package:fhcs/features/investments/presentation/controllers/investments.dart';
import 'package:fhcs/features/loans/presentation/controllers/cash_injection.dart';
import 'package:fhcs/features/loans/presentation/controllers/loan_application.dart';
import 'package:fhcs/features/loans/presentation/controllers/loans.dart';
import 'package:fhcs/features/loans/presentation/controllers/normal_loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/referee_request.dart';
import 'package:fhcs/features/loans/presentation/controllers/repay_loan.dart';
import 'package:fhcs/features/loans/presentation/controllers/select_referee.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> accountNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> investmentsNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> loansNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static GoRouter routeConfig = GoRouter(
    debugLogDiagnostics: false,
    navigatorKey: GlobalVariables.rootNavigatorKey,
    initialLocation: RouteConstants.splashRoute,
    routes: [
      GoRoute(
        path: RouteConstants.splashRoute,
        name: RouteConstants.splashRoute,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: SplashScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: RouteConstants.loginRoute,
        name: RouteConstants.loginRoute,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: RouteConstants.signUpRoute,
        name: RouteConstants.signUpRoute,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: SignUpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: RouteConstants.initialRoute,
        name: RouteConstants.initialRoute,
        pageBuilder: (context, state) => _buildPage(OnboardingScreen()),
      ),
      GoRoute(
        path: RouteConstants.enterOtpRoute,
        name: RouteConstants.enterOtpRoute,
        pageBuilder: (context, state) =>
            _buildPage(EnterOtpScreen(email: state.extra as String)),
      ),
      GoRoute(
        path: RouteConstants.nextOfKinRoute,
        name: RouteConstants.nextOfKinRoute,
        pageBuilder: (context, state) => _buildPage(NextOfKinScreen()),
      ),
      GoRoute(
        path: RouteConstants.withdrawalBankRoute,
        name: RouteConstants.withdrawalBankRoute,
        pageBuilder: (context, state) => _buildPage(WithdrawalBankScreen()),
      ),
      GoRoute(
        path: RouteConstants.membershipPaymentRoute,
        name: RouteConstants.membershipPaymentRoute,
        pageBuilder: (context, state) => _buildPage(MembershipPaymentScreen(
          data: state.extra as ({String? amount, String? ref}),
        )),
      ),
      GoRoute(
        path: RouteConstants.createPasswordRoute,
        name: RouteConstants.createPasswordRoute,
        pageBuilder: (context, state) => _buildPage(CreatePasswordScreen()),
      ),
      GoRoute(
        path: RouteConstants.kycRoute,
        name: RouteConstants.kycRoute,
        pageBuilder: (context, state) => _buildPage(KycScreen()),
      ),
      GoRoute(
        path: RouteConstants.setTransactionPin,
        name: RouteConstants.setTransactionPin,
        pageBuilder: (context, state) => _buildPage(SetTransactionPinScreen()),
      ),
      GoRoute(
        path: RouteConstants.depositFundRoute,
        name: RouteConstants.depositFundRoute,
        pageBuilder: (context, state) => _buildPage(DepositFundScreen(
          amount: state.extra as String?,
        )),
      ),
      GoRoute(
        path: RouteConstants.addMoneyRoute,
        name: RouteConstants.addMoneyRoute,
        pageBuilder: (context, state) => _buildPage(AddMoneyScreen(
          mode: state.extra as FundingMode,
          amount: state.uri.queryParameters['amount'],
        )),
      ),
      GoRoute(
        path: RouteConstants.cardDepositRoute,
        name: RouteConstants.cardDepositRoute,
        pageBuilder: (context, state) => _buildPage(CardDepositScreen(
          amount: state.extra as String,
        )),
      ),
      GoRoute(
        path: RouteConstants.withdrawFromRoute,
        name: RouteConstants.withdrawFromRoute,
        pageBuilder: (context, state) => _buildPage(WithdrawFromScreen()),
      ),
      GoRoute(
        path: RouteConstants.withdrawFundRoute,
        name: RouteConstants.withdrawFundRoute,
        pageBuilder: (context, state) => _buildPage(WithdrawFundScreen(
          account: state.extra as WithdrawalAccount,
        )),
      ),
      GoRoute(
        path: RouteConstants.loanApplicationRoute,
        name: RouteConstants.loanApplicationRoute,
        pageBuilder: (context, state) => _buildPage(LoanApplicationScreen()),
      ),
      GoRoute(
        path: RouteConstants.profileRoute,
        name: RouteConstants.profileRoute,
        pageBuilder: (context, state) => _buildPage(ProfileScreen(
          fullName: state.extra as String,
        )),
      ),
      GoRoute(
        path: RouteConstants.normalLoanRoute,
        name: RouteConstants.normalLoanRoute,
        pageBuilder: (context, state) => _buildPage(
          NormalLoanScreen(isNormalLoan: state.extra as bool),
        ),
      ),
      GoRoute(
        path: RouteConstants.selectRefereeRoute,
        name: RouteConstants.selectRefereeRoute,
        pageBuilder: (context, state) => _buildPage(
          SelectRefereeScreen(
            isNormalLoan: state.extra as bool,
            amount: state.uri.queryParameters as Map<String, dynamic>,
          ),
        ),
      ),
      GoRoute(
        path: RouteConstants.selectWitnessRoute,
        name: RouteConstants.selectWitnessRoute,
        pageBuilder: (context, state) => _buildPage(
          SelectWitnessScreen(
            data: {},
          ),
        ),
      ),
      GoRoute(
        path: RouteConstants.refereeRequestRoute,
        name: RouteConstants.refereeRequestRoute,
        pageBuilder: (context, state) => _buildPage(RefereeRequestScreen()),
      ),
      GoRoute(
        path: RouteConstants.applyForInvestmentsRoute,
        name: RouteConstants.applyForInvestmentsRoute,
        pageBuilder: (context, state) =>
            _buildPage(ApplyForInvestmentsScreen()),
      ),
      GoRoute(
        path: RouteConstants.investmentDetailRoute,
        name: RouteConstants.investmentDetailRoute,
        pageBuilder: (context, state) => _buildPage(
          InvestmentDetailScreen(
            investmentType: state.extra as InvestmentTypeData?,
          ),
        ),
      ),
      GoRoute(
        path: RouteConstants.membershipBreakdownRoute,
        name: RouteConstants.membershipBreakdownRoute,
        pageBuilder: (context, state) => _buildPage(
          MembershipBreakdownScreen(
            paymentInfo: state.extra as PaymentInfoData,
          ),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return CustomScaffoldMenuWidget(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: homeNavigatorKey,
            routes: [
              GoRoute(
                path: RouteConstants.homeRoute,
                name: RouteConstants.homeRoute,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: HomeScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: accountNavigatorKey,
            routes: [
              GoRoute(
                  path: RouteConstants.accountRoute,
                  name: RouteConstants.accountRoute,
                  pageBuilder: (context, state) => NoTransitionPage(
                        child: AccountsScreen(),
                      ),
                  routes: [
                    GoRoute(
                      path: RouteConstants.statementRoute,
                      name: RouteConstants.statementRoute,
                      parentNavigatorKey: GlobalVariables.rootNavigatorKey,
                      pageBuilder: (context, state) => _buildPage(
                        StatementScreen(),
                      ),
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: investmentsNavigatorKey,
            routes: [
              GoRoute(
                  path: RouteConstants.investmentRoute,
                  name: RouteConstants.investmentRoute,
                  pageBuilder: (context, state) => NoTransitionPage(
                        child: InvestmentsScreen(),
                      ),
                  routes: [
                    GoRoute(
                      path: RouteConstants.selectVendorRoute,
                      name: RouteConstants.selectVendorRoute,
                      parentNavigatorKey: GlobalVariables.rootNavigatorKey,
                      pageBuilder: (context, state) => _buildPage(
                        SelectVendorScreen(data: {}),
                      ),
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: loansNavigatorKey,
            routes: [
              GoRoute(
                path: RouteConstants.loansRoute,
                name: RouteConstants.loansRoute,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: LoansScreen(),
                ),
                routes: [
                  GoRoute(
                    path: RouteConstants.repayLoanRoute,
                    name: RouteConstants.repayLoanRoute,
                    parentNavigatorKey: GlobalVariables.rootNavigatorKey,
                    pageBuilder: (context, state) => _buildPage(
                      RepayLoanScreen(),
                    ),
                  ),
                  GoRoute(
                    path: RouteConstants.cashInjectionRoute,
                    name: RouteConstants.cashInjectionRoute,
                    parentNavigatorKey: GlobalVariables.rootNavigatorKey,
                    pageBuilder: (context, state) => _buildPage(
                      CashInjectionScreen(),
                    ),
                  ),
                  GoRoute(
                    path: RouteConstants.activeLoanRoute,
                    name: RouteConstants.activeLoanRoute,
                    parentNavigatorKey: GlobalVariables.rootNavigatorKey,
                    pageBuilder: (context, state) => _buildPage(
                      ActiveLoanScreen(loanInfo: state.extra as LoanData),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static Page _buildPage(Widget child) {
    return Platform.isIOS
        ? CupertinoPage(child: child)
        : MaterialPage(child: child);
  }
}
