import 'dart:io';

import 'package:flutter/material.dart';

import 'package:fhcs/core/components/custom_bottom_sheet_wrapper.dart';
import 'package:fhcs/features/auth/presentation/sheets/bank_transfer.dart';
import 'package:fhcs/features/auth/presentation/sheets/membership_payment.dart';
import 'package:fhcs/features/auth/presentation/sheets/otp_success.dart';
import 'package:fhcs/features/home/presentation/sheets/deposit.dart';
import 'package:fhcs/features/home/presentation/sheets/deposit_success.dart';
import 'package:fhcs/features/home/presentation/sheets/payment_method.dart';
import 'package:fhcs/features/investments/presentation/sheets/investment_confirmation.dart';
import 'package:fhcs/features/loans/presentation/sheets/approve_referee_request.dart';
import 'package:fhcs/features/loans/presentation/sheets/file_picker.dart';
import 'package:fhcs/features/loans/presentation/sheets/loan_confirmation.dart';
import 'package:fhcs/features/loans/presentation/sheets/reject_referee_request.dart';

class AppSheets {
  static Future<void> otpVerificationSuccessSheet(BuildContext context,
      {required Function onPressed}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: OtpSuccessWidget(
            onContinue: () => onPressed(),
            nextStepsData: [
              'Next Of Kin Information',
              'Add Withdrawal Bank Detail',
              'Membership Payment',
              'Create Password',
            ],
          ),
        );
      },
    );
  }

  static Future<void> bankWithdrawalSuccessSheet(BuildContext context,
      {required Function onPressed}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: OtpSuccessWidget(
            title: "Bank Details Saved",
            subtitle: "Your withdrawal bank details was saved successfully",
            onContinue: () => onPressed(),
            nextStepsData: [
              'Membership Payment',
              'Create Password',
            ],
          ),
        );
      },
    );
  }

  static Future<void> bankTransferSuccessSheet(BuildContext context,
      {required Function onPressed}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      // constraints: ,
      enableDrag: false,
      isDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: BankTransferSuccessWidget(
            onContinue: () => onPressed(),
            paymentInfo: {
              "Amount paid": "N 20,000",
              "Payment method": "Bank transfer",
              "Transaction ID": "#1234567890",
              "Payment date": "12th August, 2021",
            },
          ),
        );
      },
    );
  }

  static Future<void> membershipPaymentSheet(BuildContext context,
      {required Function onPressed}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      constraints: BoxConstraints.expand(),
      context: context,
      builder: (context) {
        return MembershipPaymentWidget();
      },
    );
  }

  static Future<void> depositSheet(BuildContext context,
      {required Function onPressed}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      constraints: BoxConstraints.expand(),
      context: context,
      builder: (context) {
        return DepositSheetWidget();
      },
    );
  }

  static Future<void> depositSuccessfulSheet(BuildContext context,
      {required Function onPressed, String? title, String? subtitle}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: DepositSuccessWidget(
            onPressed: () => onPressed(),
            title: title,
            subtitle: subtitle,
          ),
        );
      },
    );
  }

  static Future<void> repaymentSuccessfulSheet(BuildContext context,
      {required Function onPressed, String? title, String? subtitle}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: DepositSuccessWidget(
            onPressed: () => onPressed(),
            title: title,
            subtitle: subtitle,
          ),
        );
      },
    );
  }

  static Future<void> paymentMethodSheet(BuildContext context,
      {required Function onPressed,
      required String selectedCard,
      required Function(String) onSelectCard}) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: PaymentMethodSheetWidget(
            onPressed: () => onPressed(),
            selectedCard: selectedCard,
            onSelectCard: onSelectCard,
          ),
        );
      },
    );
  }

  static Future<void> filePickerSheet(
    BuildContext context, {
    required File? selectedFile,
    required Function(File? doc, String? url) onPickFile,
  }) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
            child: CustomFilePickerSheet(
          onSelectFile: onPickFile,
          selectedFile: selectedFile,
        ));
      },
    );
  }

  static Future<void> loanConfirmationSheet(
    BuildContext context, {
    required bool isNormalLoan,
    required Map<String, dynamic> loanInfo,
    required Function applyForLoan,
  }) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: LoanConfirmationSheetWidget(
            isNormaLoan: isNormalLoan,
            loanInfo: loanInfo,
            applyForLoan: applyForLoan,
          ),
        );
      },
    );
  }

  static Future<void> investmentConfirmationSheet(
    BuildContext context, {
    required bool isNormalLoan,
    required Map<String, dynamic> loanInfo,
    required Function applyForLoan,
  }) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: InvestmentConfirmationSheetWidget(
            isNormaLoan: isNormalLoan,
            loanInfo: loanInfo,
            applyForLoan: applyForLoan,
          ),
        );
      },
    );
  }

  static Future<void> approveRefereeRequestSheet(
    BuildContext context, {
    required Function onApprove,
  }) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: ApproveRefereeRequestSheetWidget(
            onApprove: onApprove,
          ),
        );
      },
    );
  }

  static Future<void> rejectRefereeRequestSheet(
    BuildContext context, {
    required Function onReject,
  }) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return CustomBottomSheetWrapperWidget(
          child: RejectRefereeRequestSheetWidget(
            onReject: onReject,
          ),
        );
      },
    );
  }
}
