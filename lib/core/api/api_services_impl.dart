import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fhcs/core/api/api_services.dart';
import 'package:fhcs/core/api/exceptions/contracts/failure.dart';
import 'package:fhcs/core/api/service/contracts/api_response.dart';
import 'package:fhcs/core/api/service/dio_client.dart';
import 'package:fhcs/core/api/service/endpoints.dart';
import 'package:fhcs/core/data/bank.dart';
import 'package:fhcs/core/data/basic_info.dart';
import 'package:fhcs/core/data/nok_info.dart';
import 'package:fhcs/core/data/personal_info.dart';

import 'service/contracts/api_client.dart';

class ApiServicesImpl implements ApiServices {
  final IApiClient apiClient;

  ApiServicesImpl({required this.apiClient});

  @override
  Future<Either<Failure, ApiResponse<String>>> register(
      Map<String, dynamic> payload, File file) async {
    return apiClient.multipartRequest<String>(
      ApiEndpoint.signup,
      MethodType.post,
      (data) => data['verification_info']['token'],
      // payload,
      FormData.fromMap({
        ...payload,
        if (file.path.isNotEmpty)
          "file": await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
      }),
    );
  }

  @override
  Future<Either<Failure, ApiResponse<String>>> uploadFile(File file) async =>
      apiClient.multipartRequest<String>(
        ApiEndpoint.uploadFile,
        MethodType.post,
        (data) => data['verification_info']['token'],
        FormData.fromMap({
          "file": await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
        }),
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> verifyOtp(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.verifyOtp,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: null,
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> nokDetail(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.nokDetail,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          final nokInfo = NokInfoData.fromJson(data['nok_info']['primary_nok']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: nokInfo
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<InfoData>>> bankDetail(
          Map<String, dynamic> payload) =>
      apiClient.request<InfoData>(
        ApiEndpoint.nokDetail,
        MethodType.post,
        (data) {
          final basicInfo = BasicInfoData.fromJson(data['basic_info']);
          final personalData = PersonalInfoData.fromJson(data['personal_info']);
          final nokInfo = NokInfoData.fromJson(data['nok_info']['primary_nok']);
          return (
            basicInfo: basicInfo,
            personalData: personalData,
            nokInfoData: nokInfo
          );
        },
        payload,
      );
  @override
  Future<Either<Failure, ApiResponse<String>>> setPassword(
          Map<String, dynamic> payload) =>
      apiClient.request<String>(
        ApiEndpoint.setPassword,
        MethodType.post,
        (data) {
          return "Password created successfully";
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<LoginData>>> login(
          Map<String, dynamic> payload) =>
      apiClient.request<LoginData>(
        ApiEndpoint.login,
        MethodType.post,
        (data) {
          return (
            accessToken: data['access_token'],
            refreshToken: data['refresh_token'],
            fullName: data['full_name'],
            username: data['username']
          );
        },
        payload,
      );

  @override
  Future<Either<Failure, ApiResponse<List<BankData>>>> bankList() =>
      apiClient.request<List<BankData>>(
        ApiEndpoint.bankList,
        MethodType.get,
        (data) => (data as List)
            .map((userData) => BankData.fromJson(userData))
            .toList(),
        null,
      );

  // @override
  // Future<Either<Failure, ApiResponse<LoginData>>> signup(
  //         String email, String password) =>
  //     apiClient.request<LoginData>(
  //       ApiEndpoint.signup,
  //       MethodType.post,
  //       (data) => LoginData.fromJson(data),
  //       {
  //         "email": email.encrypt(),
  //         "password": password.encrypt(),
  //         "confirm_password": password.encrypt(),
  //         "auth_type": "password".encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> resendOtp(String email) =>
  //     apiClient.request(ApiEndpoint.resendOtp, MethodType.post, (p0) => null,
  //         {"email": email});

  // @override
  // Future<Either<Failure, ApiResponse>> verifyOtp(String otp) =>
  //     apiClient.request(
  //       ApiEndpoint.validateOtp,
  //       MethodType.post,
  //       (p0) => null,
  //       {"otp": otp.encrypt()},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<UserType>>>> fetchUserTypes() =>
  // apiClient.request<List<UserType>>(
  //   ApiEndpoint.fetchUserTypes,
  //   MethodType.get,
  //   (data) => (data as List)
  //       .map((userData) => UserType.fromJson(userData))
  //       .toList(),
  //   null,
  // );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> initiateKycVerification({
  //   required String firstName,
  //   required String middleName,
  //   required String lastName,
  //   required String phoneNumber,
  //   required String dateOfBirth,
  //   required String userType,
  //   required String country,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.initiateKycVerification,
  //       MethodType.post,
  //       (data) => data['client_country_code'] as String,
  //       {
  //         "first_name": firstName.encrypt(),
  //         "last_name": lastName.encrypt(),
  //         "phone_number": phoneNumber.encrypt(),
  //         "middle_name": middleName.encrypt(),
  //         "date_of_birth": dateOfBirth.encrypt(),
  //         "user_type": userType.encrypt(),
  //         "country_code": country.encrypt(), // country,
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> uploadFileToServer(
  //         Map<String, dynamic> data) async =>
  //     apiClient.multipartRequest(
  //       "url",
  //       MethodType.post,
  //       (p0) => null,
  //       data,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<LoginData>>>
  //     fetchUserDetailsFromServer() => apiClient.request<LoginData>(
  //         ApiEndpoint.userDetails,
  //         MethodType.get,
  //         (data) => LoginData.fromJson(data),
  //         null);

  // @override
  // Future<Either<Failure, ApiResponse<List<String>>>> fetchIndustries() =>
  //     apiClient.request<List<String>>(
  //       ApiEndpoint.fetchIndustries,
  //       MethodType.get,
  //       (data) => (data['industry_list'] as List)
  //           .map((userData) => userData as String)
  //           .toList(),
  //       null,
  //     );

  // @override
  // initiateCorporateKycVerification({
  //   required String companyName,
  //   required String industry,
  //   required String rcNumber,
  //   required String dateOfIncorporation,
  //   required String phoneNumber,
  //   String? website,
  //   required String userType,
  //   required String country,
  // }) async =>
  //     apiClient.request(
  //       ApiEndpoint.initiateCorporateKycVerification,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "company_name": companyName.encrypt(),
  //         "industry": industry,
  //         "rc_number": rcNumber.encrypt(),
  //         "date_of_inc": dateOfIncorporation.encrypt(),
  //         "user_type": userType.encrypt(),
  //         if (website != null && website.isNotEmpty)
  //           "website": website.encrypt(),
  //         "phone_number": phoneNumber.encrypt(),
  //         "country_code": country.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> initiateIndividualKycVerification(
  //         {required bvn, required File id}) async =>
  //     apiClient.multipartRequest(
  //       ApiEndpoint.updateIndividualBvn,
  //       MethodType.post,
  //       (data) => null,
  //       FormData.fromMap({
  //         "bvn": bvn.encrypt(),
  //         // "id_card_ima": await MultipartFile.fromFile(id.path),
  //       }),
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Bank>>>> fetchBanks() =>
  //     apiClient.request<List<Bank>>(
  //       ApiEndpoint.bankList,
  //       MethodType.get,
  //       (data) =>
  //           (data as List).map((userData) => Bank.fromJson(userData)).toList(),
  //       null,
  //     );

  // @override
  // addBank({
  //   required String bankCode,
  //   required String accountNumber,
  //   required String accountName,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.addBank,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "bank_code": bankCode,
  //         "account_number": accountNumber.encrypt(),
  //         "account_owner": accountName.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> changePassword({
  //   required String oldPassword,
  //   required String newPassword,
  //   required String email,
  //   required String confirmPassword,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.changePassword,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "old_password": oldPassword.encrypt(),
  //         "email": email.encrypt(),
  //         "new_password": newPassword.toString().encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> requestOtp({required String email}) =>
  //     apiClient.request(
  //       ApiEndpoint.requestResetOtp,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "email": email.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> verifyResetOtp(
  //         {required String email, required String otp}) =>
  //     apiClient.request(
  //       ApiEndpoint.verifyResetOtp,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "email": email.encrypt(),
  //         "otp": otp.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<NOK>>> fetchNextOfKinDetails() =>
  //     apiClient.request(
  //       ApiEndpoint.fetchNextOfKin,
  //       MethodType.get,
  //       (data) => NOK.fromJson(data),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> saveNextOfKinDetails({
  //   required String name,
  //   required String phone,
  //   required String address,
  //   required String relationship,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.updateNextOfKin,
  //       MethodType.put,
  //       (data) => null,
  //       {
  //         "full_name": name.encrypt(),
  //         "relationship": relationship.encrypt(),
  //         "phone_number": phone.encrypt(),
  //         "address": address.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<ServerCountry>>>>
  //     fetchCountryList() => apiClient.request(
  //           ApiEndpoint.fetchCountries,
  //           MethodType.get,
  //           (data) => (data as List)
  //               .map((userData) => ServerCountry.fromJson(userData))
  //               .toList(),
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<List<ClientBank>>>> getClientBankList() =>
  //     apiClient.request(
  //       ApiEndpoint.fetchClientBanks,
  //       MethodType.get,
  //       (data) => (data as List)
  //           .map((userData) => ClientBank.fromJson(userData))
  //           .toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> editNameOrDateOfBirth(
  //         {String? firstName, String? lastName, String? dob, String? bvn}) =>
  //     apiClient.request(
  //       ApiEndpoint.editDetails,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         if (firstName != null) "first_name": firstName.encrypt(),
  //         if (lastName != null) "last_name": lastName.encrypt(),
  //         if (dob != null) "dob": dob.encrypt(),
  //         if (bvn != null) "bvn": bvn.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Derivatives>>>> getDerivatives(
  //         String cid) =>
  //     apiClient.request(
  //       ApiEndpoint.getDerivatives,
  //       MethodType.get,
  //       (data) => (data as List)
  //           .map((userData) => Derivatives.fromJson(userData))
  //           .toList(),
  //       null,
  //       queryParameters: {'cid': cid},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> editEmailOrPhoneNumber(
  //         {String? email, String? phoneNumber}) =>
  //     apiClient.request(
  //       ApiEndpoint.editDetails,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         if (email != null) "email": email.encrypt(),
  //         if (phoneNumber != null) "phone_number": phoneNumber.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> editCompanyName({
  //   required String name,
  //   required String natureOfBusiness,
  //   required String dateOfIncorporation,
  //   required String rcNumber,
  // }) async {
  //   return apiClient.request(
  //     ApiEndpoint.editCompanyName,
  //     MethodType.post,
  //     (data) => null,
  //     {
  //       "first_name": name.encrypt(),
  //       "nature_of_business": natureOfBusiness,
  //       "date_of_incorporation": dateOfIncorporation.encrypt(),
  //       "rc_number": rcNumber.encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse>> deleteClientBank(String id) =>
  //     apiClient.request(ApiEndpoint.deleteBank, MethodType.delete,
  //         (data) => null, {"code": id});

  // @override
  // Future<Either<Failure, ApiResponse>> sendForgotPasswordEmail(String email) =>
  //     apiClient.request(
  //       ApiEndpoint.sendForgotPasswordEmail,
  //       MethodType.post,
  //       (data) => null,
  //       {"email": email.encrypt()},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> uploadCorporateDocuments(
  //     {File? authorizedRepresentatives,
  //     File? boardResolution,
  //     File? cac2,
  //     File? cac7,
  //     File? cacForm3,
  //     File? certificateOfIncorporation,
  //     File? secLicense,
  //     File? memorandumOfAssociation,
  //     File? oneYearFinancialStatement}) async {
  //   List<MultipartFile> documents = [];
  //   if (authorizedRepresentatives != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       authorizedRepresentatives.path,
  //       filename:
  //           'authorized_reps${authorizedRepresentatives.path.substring(authorizedRepresentatives.path.length - 4)}',
  //     ));
  //   }
  //   if (boardResolution != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       boardResolution.path,
  //       filename:
  //           'board_resolution${boardResolution.path.substring(boardResolution.path.length - 4)}',
  //     ));
  //   }
  //   if (cac2 != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       cac2.path,
  //       filename: 'cac_2${cac2.path.substring(cac2.path.length - 4)}',
  //     ));
  //   }
  //   if (cac7 != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       cac7.path,
  //       filename: 'cac_7${cac7.path.substring(cac7.path.length - 4)}',
  //     ));
  //   }
  //   if (cacForm3 != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       cacForm3.path,
  //       filename: 'cac${cacForm3.path.substring(cacForm3.path.length - 4)}',
  //     ));
  //   }
  //   if (certificateOfIncorporation != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       certificateOfIncorporation.path,
  //       filename:
  //           'cert_of_inc${certificateOfIncorporation.path.substring(certificateOfIncorporation.path.length - 4)}',
  //     ));
  //   }
  //   if (secLicense != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       secLicense.path,
  //       filename:
  //           'sec_lisence${secLicense.path.substring(secLicense.path.length - 4)}',
  //     ));
  //   }
  //   if (memorandumOfAssociation != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       memorandumOfAssociation.path,
  //       filename:
  //           'memorandum${memorandumOfAssociation.path.substring(memorandumOfAssociation.path.length - 4)}',
  //     ));
  //   }
  //   if (oneYearFinancialStatement != null) {
  //     documents.add(await MultipartFile.fromFile(
  //       oneYearFinancialStatement.path,
  //       filename:
  //           'financial_statement${oneYearFinancialStatement.path.substring(oneYearFinancialStatement.path.length - 4)}',
  //     ));
  //   }

  //   return apiClient.request(
  //     ApiEndpoint.uploadCorporateDocuments,
  //     MethodType.post,
  //     (p0) => null,
  //     FormData.fromMap({'documents': documents}),
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<List<VirtualAccount>>>> getVirtualAccounts(
  //         CurrencyMode currencyMode) =>
  //     apiClient.request(
  //       ApiEndpoint.getVirtualAccounts + currencyMode.value.$1,
  //       MethodType.get,
  //       (data) => (data as List)
  //           .map((userData) => VirtualAccount.fromJson(userData))
  //           .toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Transaction>>>>
  //     getTransactionHistory() => apiClient.request(
  //           ApiEndpoint.getTransactionHistory,
  //           MethodType.get,
  //           (data) => data.runtimeType != List
  //               ? []
  //               : (data as List).map((i) => Transaction.fromJson(i)).toList(),
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<List<NotificationSetting>>>>
  //     fetchNotificationSettings() => apiClient.request(
  //           ApiEndpoint.fetchNotificationSettings,
  //           MethodType.get,
  //           (data) {
  //             return (data as List)
  //                 .map((data) => NotificationSetting.fromJson(data))
  //                 .toList();
  //           },
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> getReferralInfo() =>
  //     apiClient.request(
  //       ApiEndpoint.getReferralInfo,
  //       MethodType.get,
  //       (data) => data['referral_code'] as String,
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> editProfileImage(File image) async =>
  //     apiClient.request(
  //       ApiEndpoint.editProfileImage,
  //       MethodType.post,
  //       (p0) => null,
  //       FormData.fromMap({
  //         "photo": await MultipartFile.fromFile(image.path),
  //       }),
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<UserAction>>> fetchUserActions() =>
  //     apiClient.request(
  //       ApiEndpoint.accountSetupDetails,
  //       MethodType.get,
  //       (data) => UserAction.fromJson(data),
  //       null,
  //     );

  // @override
  // fetchUserAccountName(
  //         {required String bankCode, required String accountNumber}) =>
  //     apiClient.request(
  //       ApiEndpoint.fetchUserAccountName,
  //       MethodType.post,
  //       (data) => data['account_name'] as String,
  //       {
  //         "code": bankCode,
  //         "account_number": accountNumber.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> fundWallet(
  //         String amount, WalletMode mode) =>
  //     apiClient.request(
  //       ApiEndpoint.fundWallet,
  //       MethodType.post,
  //       (data) => data['url'] as String,
  //       {
  //         "amount": amount.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> putUpTrade({
  //   required String code,
  //   required String units,
  //   required String orderTtype,
  //   required String marketOrderType,
  //   String? orderPrice,
  //   String? location,
  //   String? tid,
  //   String? traderDetailState,
  // }) async {
  //   final currencyCode =
  //       await GetIt.I.get<IUserRepository>().fetchCurrencyMode();
  //   return apiClient.request(
  //     ApiEndpoint.putUpTrade,
  //     MethodType.post,
  //     (data) => "your order has been queued",
  //     {
  //       "security_code": code.encrypt(),
  //       "units": units.encrypt(),
  //       "order_type": orderTtype.encrypt(),
  //       "market_order_type": marketOrderType.encrypt(),
  //       "currency_code": currencyCode?.trim().encrypt() ?? "NGN".encrypt(),
  //       if (traderDetailState != null) "trader_detail_state": traderDetailState,
  //       if (tid != null) "tid": tid.encrypt(),
  //       if (location != null) "location": location.encrypt(),
  //       if (orderPrice != null) "order_price": orderPrice.encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> withdraw({
  //   required String amount,
  //   required String bankCode,
  //   required String channel,
  //   required String requestId,
  //   required String transactionPin,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.withdraw,
  //       MethodType.post,
  //       (data) =>
  //           "Your withdrawal request has been logged and will be processed shortly",
  //       {
  //         "amount": amount.encrypt(),
  //         "bank_code": bankCode,
  //         "channel": channel.encrypt(),
  //         "request_id": requestId.encrypt(),
  //         "transaction_pin": transactionPin.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<String?>>> getMarginBalance() =>
  //     apiClient.request(
  //       ApiEndpoint.getMarginBalance,
  //       MethodType.get,
  //       (data) => data?['data']?['balance'] as String?,
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Balance>>>> getMarginLogs() =>
  //     apiClient.request(
  //       ApiEndpoint.getMarginLogs,
  //       MethodType.get,
  //       (data) => (data?['data']).runtimeType != List
  //           ? []
  //           : (data?['data'] as List)
  //               .map((userData) => Balance.fromJson(userData))
  //               .toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<ContractSpecification>>>
  //     getContractSpecification(String code) => apiClient.request(
  //           ApiEndpoint.getContractSpecification + code,
  //           MethodType.get,
  //           (data) => ContractSpecification.fromJson(data),
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> setPriceAlert(
  //         {required String securityCode,
  //         String? notificationPrice,
  //         String? secondNotificationPrice,
  //         required bool isPercentage}) =>
  //     apiClient.request(
  //       ApiEndpoint.setPriceAlert,
  //       MethodType.post,
  //       (data) => "Price alert set successfully",
  //       {
  //         "security_code": securityCode,
  //         "notification_price": notificationPrice?.encrypt(),
  //         "second_notification_price": secondNotificationPrice?.encrypt(),
  //         if (isPercentage) "is_percentage": "True".encrypt(),
  //         if (!isPercentage) "is_price": "True".encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> cancelOrder({required String tid}) =>
  //     apiClient.request(
  //       ApiEndpoint.cancelOrder,
  //       MethodType.post,
  //       (data) => null,
  //       {"tid": tid},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<AmlOption>>>> fetchQuestions(
  //         String key) =>
  //     apiClient.request(
  //       ApiEndpoint.questions,
  //       MethodType.get,
  //       (data) => (data.runtimeType != List)
  //           ? []
  //           : (data as List)
  //               .map((userData) => AmlOption.fromJson(userData))
  //               .toList(),
  //       null,
  //       queryParameters: {'survey_type': key},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> answerQuestion(
  //     {AmlOption? answer, required String type}) {
  //   return apiClient.request(
  //     ApiEndpoint.answerQuestion,
  //     MethodType.post,
  //     (data) => null,
  //     {
  //       "question_id": answer?.id,
  //       "answer_id": answer?.answer?.id,
  //       "survey_type": type.encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<List<String>>>> getFavourites() =>
  //     apiClient.request(
  //         ApiEndpoint.getFavourites,
  //         MethodType.get,
  //         (data) => data.runtimeType != List
  //             ? []
  //             : (data as List)
  //                 .map((userData) => userData['security_code'] as String)
  //                 .toList(),
  //         null,
  //         queryParameters: {
  //           "currency_code": globalCurrencyMode,
  //         });

  // @override
  // Future<Either<Failure, ApiResponse>> addToFavourites(
  //         {required String code}) =>
  //     apiClient.request(
  //       ApiEndpoint.addToFavorites,
  //       MethodType.post,
  //       (data) => null,
  //       {'security_code': code},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> removeFromFavourites(
  //         {required String code}) =>
  //     apiClient.request(
  //       ApiEndpoint.removeFromFavorites,
  //       MethodType.delete,
  //       (data) => null,
  //       {'security_code': code},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> sendVerificationOtp() =>
  //     apiClient.request(
  //       ApiEndpoint.sendVerificationOtp,
  //       MethodType.get,
  //       (data) => null,
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> setAccountPin(
  //         {required String pin, required String otp, String? oldPin}) =>
  //     apiClient.request(
  //       ApiEndpoint.setAccountPin,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "transaction_pin": pin.encrypt(),
  //         "otp_code": otp.encrypt(),
  //         if (oldPin != null) "old_transaction_pin": oldPin.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<ProfileDetails>>> getProfileDetails() =>
  //     apiClient.request(
  //       ApiEndpoint.getProfileDetails,
  //       MethodType.get,
  //       (data) => ProfileDetails.fromJson(data),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Locations>>>> fetchLocation() =>
  //     apiClient.request(
  //       ApiEndpoint.fetchLocation,
  //       MethodType.get,
  //       (data) => (data as List)
  //           .map((userData) => Locations.fromJson(userData))
  //           .toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<PortfolioHistory>>>>
  //     getPortfolioHistory({required String code, required String cid}) =>
  //         apiClient.request(
  //           ApiEndpoint.getPortfolioHistory,
  //           MethodType.get,
  //           (data) => (data as List)
  //               .map((i) => PortfolioHistory.fromJson(i))
  //               .toList(),
  //           null,
  //           queryParameters: {
  //             'security_code': code,
  //             'cid': cid,
  //           },
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<List<OtcPortfolio>>>> getOtcPortfolio(
  //         cid) =>
  //     apiClient.request(
  //       ApiEndpoint.getOtcPortfolio,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => OtcPortfolio.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {
  //         'cid': cid,
  //         "currency_code": globalCurrencyMode,
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<News>>>> getNews() =>
  //     apiClient.request(
  //       ApiEndpoint.getNews,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => News.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Notifications>>>>
  //     getNotifications() => apiClient.request(
  //           ApiEndpoint.getNotifications,
  //           MethodType.get,
  //           (data) =>
  //               (data as List).map((i) => Notifications.fromJson(i)).toList(),
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse<List<Maintenance>>>> getMaintenance() =>
  //     apiClient.request(
  //       ApiEndpoint.getMaintenance,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => Maintenance.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<DeliveryLog>>>> getDeliveryLogs(
  //         String tid, String cid) =>
  //     apiClient.request(
  //       ApiEndpoint.getDeliveryLogs,
  //       MethodType.get,
  //       (data) => data.runtimeType != List
  //           ? []
  //           : (data as List).map((i) => DeliveryLog.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {
  //         'cid': cid,
  //         'contract_id': tid,
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<CashCoverLog>>>> getCashCoverLogs(
  //         String cid) =>
  //     apiClient.request(
  //       ApiEndpoint.getCashCoverLogs,
  //       MethodType.get,
  //       (data) => data.runtimeType != List
  //           ? []
  //           : (data as List).map((i) => CashCoverLog.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {
  //         "cid": cid,
  //         "currency_code": "NGN",
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<SecurityPriceInfo>>>> getFeeConfig(
  //         String code) =>
  //     apiClient.request(
  //       ApiEndpoint.getFeeConfig,
  //       MethodType.get,
  //       (data) => data.runtimeType != List
  //           ? []
  //           : (data as List).map((i) => SecurityPriceInfo.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {"security_code": code},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<States>>>> getStates() =>
  //     apiClient.request(
  //       ApiEndpoint.getStates,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => States.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<String>>>> getLga(String state) =>
  //     apiClient.request(
  //       ApiEndpoint.getLga,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => i['name'] as String).toList(),
  //       null,
  //       queryParameters: {"state_name": state},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> dispatchDawa({
  //   required String dispatchUnits,
  //   required String securityCode,
  //   required String cid,
  //   String? deliveryAddress,
  //   required String locationCode,
  //   String? deliveryState,
  //   String? deliveryLga,
  //   required bool isPickup,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.dispatch,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "cid": cid.encrypt(),
  //         "units": dispatchUnits.encrypt(),
  //         "security_code": securityCode.encrypt(),
  //         "delivery_address": deliveryAddress?.encrypt() ?? '',
  //         "location_code": locationCode.encrypt(),
  //         "delivery_state": deliveryState?.encrypt() ?? '',
  //         "delivery_lga": deliveryLga?.encrypt() ?? '',
  //         "direct_to_client": !isPickup ? "True".encrypt() : "False".encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> dispatchOtc({
  //   required String otcContractId,
  //   required List<OtcDispatchData> dispatchData,
  // }) =>
  //     apiClient.request(
  //       ApiEndpoint.dispatch,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "otc_contract_id": otcContractId.encrypt(),
  //         "dispatches": dispatchData
  //             .map((e) => {
  //                   "security_code": e.securityCode?.encrypt(),
  //                   "location_code": e.locationCode?.encrypt(),
  //                   "cid": e.cid?.encrypt(),
  //                   "units": e.units?.encrypt(),
  //                   "direct_to_client": e.directToClient?.encrypt(),
  //                   "delivery_address": e.deliveryAddress?.encrypt(),
  //                   "delivery_state": e.deliveryState?.encrypt(),
  //                   "delivery_lga": e.deliveryLga?.encrypt(),
  //                   "is_buyer_pickup": e.isBuyerPickup?.encrypt(),
  //                   "is_seller_pickup": e.isSellerPickup?.encrypt(),
  //                 })
  //             .toList(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Edx>>>> getEdex() =>
  //     apiClient.request(
  //       ApiEndpoint.getEdex,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => Edx.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {'request_type': 'edx'},
  //     );

  // List<LocationPrice> mapToObjectList(List<dynamic> data) {
  //   return data.map((innerList) => LocationPrice.fromJson(innerList)).toList();
  // }

  // @override
  // Future<Either<Failure, ApiResponse<List<LocationPrice>>>>
  //     getLocationPrices() => apiClient.request(
  //           ApiEndpoint.getLocationPrices,
  //           MethodType.get,
  //           (data) {
  //             final List<LocationPrice> dataList = [];
  //             dataList.addAll(mapToObjectList(data));
  //             return dataList;
  //           },
  //           null,
  //         );

  // @override
  // Future<Either<Failure, ApiResponse>> answerBoardAccessQuestion(
  //         {List<AmlOption?>? answer}) =>
  //     apiClient.request(
  //       ApiEndpoint.answerBoardAccessQuestion,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         'list_of_answers':
  //             List.generate(answer?.length ?? 0, (index) => answer?[index]?.id),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> updateBvn(
  //         String text, String password, bool isNin) =>
  //     apiClient.request(
  //       ApiEndpoint.updateBvn,
  //       MethodType.put,
  //       (data) => null,
  //       {
  //         if (isNin) "nin": text.encrypt(),
  //         if (!isNin) "bvn": text.encrypt(),
  //         "password": password.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> validateOtp({required String otp}) =>
  //     apiClient.request(
  //       ApiEndpoint.otpValidate + otp.decrypt(),
  //       MethodType.get,
  //       (data) => null,
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> toggleNotificationSettings(
  //         {required NotificationSetting setting}) =>
  //     apiClient.request(
  //       ApiEndpoint.toggleNotificationSettings,
  //       MethodType.post,
  //       (data) => null,
  //       [
  //         {
  //           "category": setting.category?.recursiveDecrypt().encrypt(),
  //           "is_mobile_enabled":
  //               setting.isMobileEnabled?.recursiveDecrypt().encrypt(),
  //           "is_desktop_enabled":
  //               setting.isDesktopEnabled?.recursiveDecrypt().encrypt(),
  //           "is_sms_enabled":
  //               setting.isSmsEnabled?.recursiveDecrypt().encrypt(),
  //           "is_email_enabled":
  //               setting.isEmailEnabled?.recursiveDecrypt().encrypt(),
  //         }
  //       ],
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> resetPassword(
  //         String email, String password, String confirmPassword) =>
  //     apiClient.request(
  //       ApiEndpoint.changePassword,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "email": email.encrypt(),
  //         "new_password": password.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> resetPin() => apiClient.request(
  //       ApiEndpoint.sendVerificationOtp,
  //       MethodType.get,
  //       (data) => null,
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> changePin({required String otp}) =>
  //     apiClient.request(
  //       ApiEndpoint.resetPin,
  //       MethodType.post,
  //       (data) => null,
  //       {
  //         "otp_code": otp.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<LoginData>>> verifyTwoFa(
  //         String otp, String email, bool alternate) =>
  //     apiClient.request(
  //       ApiEndpoint.verifyTwoFa,
  //       MethodType.post,
  //       (data) => LoginData.fromJson(data),
  //       {
  //         "otp": otp.encrypt(),
  //         "email": email.encrypt(),
  //         if (alternate) "alternate": "true".encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<TwoFaStatus>>> disableTwoFa(
  //         bool sendIdf, String password) =>
  //     apiClient.request(
  //       ApiEndpoint.toggleTwoFa,
  //       MethodType.post,
  //       (data) => TwoFaStatus.fromJson(data),
  //       sendIdf
  //           ? {
  //               "idf": true.toString().encrypt(),
  //               "password": password.encrypt(),
  //             }
  //           : null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> editDirectorBvnDetails(
  //         {required bool isBvn,
  //         required String idNumber,
  //         required String firstName,
  //         required String lastName,
  //         required String dateOfBirth,
  //         required String country}) =>
  //     apiClient.request(
  //       ApiEndpoint.editDirectorBvnDetails,
  //       MethodType.patch,
  //       (data) => null,
  //       {
  //         "bvn": isBvn ? idNumber : "",
  //         "nin": isBvn ? "" : idNumber,
  //         "first_name": firstName.encrypt(),
  //         "last_name": lastName.encrypt(),
  //         "date_of_birth": dateOfBirth.encrypt(),
  //         "country": country.encrypt(),
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<AppVersion>>> fetchAppVersion() =>
  //     apiClient.request(
  //       ApiEndpoint.fetchAppVersion,
  //       MethodType.get,
  //       (data) => AppVersion.fromJson(data),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<Faq>>>> getFaq() => apiClient.request(
  //       ApiEndpoint.getFaq,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => Faq.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<FaqCategory>>>> getFaqCategory() =>
  //     apiClient.request(
  //       ApiEndpoint.getFaqCategory,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => FaqCategory.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<CommunityData>>>> getCommunityList(
  //         String communityFilter) =>
  //     apiClient.request(
  //         ApiEndpoint.getCommunityList,
  //         MethodType.get,
  //         (data) =>
  //             (data as List).map((i) => CommunityData.fromJson(i)).toList(),
  //         null,
  //         queryParameters: {"community_type": communityFilter});
  // @override
  // Future<Either<Failure, ApiResponse<CommunityDetailData>>> communityDetail(
  //         String communityCode) =>
  //     apiClient.request(ApiEndpoint.communityDetail, MethodType.get,
  //         (data) => CommunityDetailData.fromJson(data), null,
  //         queryParameters: {"community_code": communityCode});
  // @override
  // Future<Either<Failure, ApiResponse<String>>> joinCommunity(
  //         String communityCode) =>
  //     apiClient.request(
  //       ApiEndpoint.joinCommunity,
  //       MethodType.post,
  //       (data) => "",
  //       {"community_code": communityCode},
  //     );
  // @override
  // Future<Either<Failure, ApiResponse<CommunityStatisticsData>>>
  //     communityDashboardStatistics() => apiClient.request(
  //           ApiEndpoint.communityDashboardStatistics,
  //           MethodType.get,
  //           (data) => CommunityStatisticsData.fromJson(data),
  //           null,
  //         );
  // @override
  // Future<Either<Failure, ApiResponse<String>>> leaveCommunity(
  //         String communityCode) =>
  //     apiClient.request(
  //       ApiEndpoint.leaveCommunity,
  //       MethodType.post,
  //       (data) => "",
  //       {"community_code": communityCode},
  //     );
  // @override
  // Future<Either<Failure, ApiResponse<String>>> fetchBrokerPermission() =>
  //     apiClient.request(
  //       ApiEndpoint.fetchBrokerPermission,
  //       MethodType.get,
  //       (data) => data['can_trade'],
  //       null,
  //     );
  // @override
  // Future<Either<Failure, ApiResponse<String>>> setBrokerPermission(
  //         String permission) =>
  //     apiClient.request(
  //       ApiEndpoint.setBrokerPermission,
  //       MethodType.post,
  //       (data) => "",
  //       {"permission": permission},
  //     );
  // @override
  // Future<Either<Failure, ApiResponse<CommunityStatisticsData>>>
  //     joinedCommunity() => apiClient.request(
  //           ApiEndpoint.joinedCommunity,
  //           MethodType.get,
  //           (data) => CommunityStatisticsData.fromJson(data),
  //           null,
  //         );
  // @override
  // Future<Either<Failure, ApiResponse<CommunityClientData>>>
  //     communityClientDashboard() => apiClient.request(
  //           ApiEndpoint.communityClientDetails,
  //           MethodType.get,
  //           (data) => CommunityClientData.fromJson(data),
  //           null,
  //         );
  // @override
  // Future<Either<Failure, ApiResponse<CommunityData>>> joinedCommunityData() =>
  //     apiClient.request(
  //       ApiEndpoint.joinedCommunityData,
  //       MethodType.get,
  //       (data) {
  //         return CommunityData.fromJson(data);
  //       },
  //       null,
  //     );
  // @override
  // Future<Either<Failure, ApiResponse>> requestLoginOtp(
  //     String email, TwoFaMode mode) {
  //   return apiClient.request(
  //     ApiEndpoint.requestLoginOtp,
  //     MethodType.post,
  //     (json) => null,
  //     {
  //       "email": email.encrypt(),
  //       "option": mode.name.encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> verifyBvn(String bvn) {
  //   return apiClient.request(
  //     ApiEndpoint.verifyBvn,
  //     MethodType.post,
  //     (json) => json['status'] as String,
  //     {
  //       "bvn": bvn.encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> exportWalletHistory(
  //     {required String startDate, required String endDate}) async {
  //   if (DateTime.now().difference(DateTime.parse(startDate)) > 31.days) {
  //     return apiClient.request(
  //       ApiEndpoint.exportWalletHistory,
  //       MethodType.get,
  //       (json) {
  //         return "Your wallet export has been sent to your mail";
  //       },
  //       null,
  //       queryParameters: {
  //         "type_of_file": "PDF",
  //         "date_to": endDate,
  //         "date_from": startDate
  //       },
  //     );
  //   } else {
  //     String directory = "";
  //     if (Platform.isIOS) {
  //       directory = (await getApplicationDocumentsDirectory()).path;
  //     } else {
  //       directory = Directory('/storage/emulated/0/Download').path;
  //     }

  //     return apiClient.download(
  //       ApiEndpoint.exportWalletHistory,
  //       "$directory/AFEX Wallet History${DateTime.now().millisecondsSinceEpoch}.pdf",
  //       (json) {
  //         if (Platform.isAndroid) {
  //           return "The file will be in your downloads folder shortly";
  //         } else {
  //           return "The file will be in your app folder shortly";
  //         }
  //       },
  //       null,
  //       queryParameters: {
  //         "type_of_file": "PDF",
  //         "date_to": endDate,
  //         "date_from": startDate
  //       },
  //     );
  //   }
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> exportPortfolioHistory(
  //     {required String startDate, required String endDate}) async {
  //   final cid =
  //       GetIt.I.get<IAssetsRepository>().getClientCid().toString().decrypt();
  //   if (DateTime.now().difference(DateTime.parse(startDate)) > 31.days) {
  //     return apiClient.request(
  //       ApiEndpoint.exportPortfolioHistory,
  //       MethodType.get,
  //       (json) {
  //         return "Your wallet export has been sent to your mail";
  //       },
  //       null,
  //       queryParameters: {
  //         "cid": cid,
  //         "date_to": endDate,
  //         "date_from": startDate,
  //       },
  //     );
  //   } else {
  //     String directory = "";
  //     if (Platform.isIOS) {
  //       directory = (await getApplicationDocumentsDirectory()).path;
  //     } else {
  //       directory = Directory('/storage/emulated/0/Download').path;
  //     }

  //     return apiClient.download(
  //       ApiEndpoint.exportPortfolioHistory,
  //       "$directory/AFEX Portfolio History${DateTime.now().millisecondsSinceEpoch}.csv",
  //       (json) {
  //         return "File downloaded";
  //       },
  //       null,
  //       queryParameters: {
  //         "cid": cid,
  //         "date_to": endDate,
  //         "date_from": startDate,
  //       },
  //     );
  //   }
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> fcmToken() async {
  //   var fcmToken = await GetIt.I.get<CacheStorage>().getFcmToken();
  //   if (fcmToken == null || fcmToken.isEmpty) {
  //     fcmToken = await firebaseMessaging.getToken();
  //     GetIt.I.get<CacheStorage>().setFcmToken(fcmToken ?? "");
  //   }
  //   String deviceId = await generateDeviceId();
  //   // log("fcm Token: ${fcmToken}");
  //   return apiClient.request(
  //     ApiEndpoint.fcmToken,
  //     MethodType.post,
  //     (json) => "",
  //     {
  //       "token": fcmToken.toString().encrypt(),
  //       "device_id": deviceId.toString().encrypt(),
  //       "device_type": Platform.isAndroid
  //           ? "Android".toString().encrypt()
  //           : "IOS".toString().encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> markNotification(
  //     String nid) async {
  //   return apiClient.request("${ApiEndpoint.markNotification}/$nid",
  //       MethodType.post, (json) => "", null);
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> createForeignBank({
  //   required String accountNumber,
  //   required String accountName,
  //   required String beneficiaryAddress,
  //   required String beneficiaryBankName,
  //   required String beneficiaryBankAddress,
  //   required String countryCode,
  //   required String swiftCode,
  //   required String narration,
  //   required String routingNumber,
  //   required String iban,
  //   required String bankCode,
  // }) async {
  //   final currencyCode =
  //       await GetIt.I.get<IUserRepository>().fetchCurrencyMode() ?? "USD";
  //   return apiClient.request(
  //     ApiEndpoint.createForeignBank,
  //     MethodType.post,
  //     (json) => "",
  //     {
  //       "account_nomination": currencyCode.encrypt(),
  //       "account_number": accountNumber.encrypt(),
  //       "account_name": accountName.encrypt(),
  //       "beneficiary_address": beneficiaryAddress.encrypt(),
  //       "beneficiary_bank_name": beneficiaryBankName.encrypt(),
  //       "beneficiary_bank_address": beneficiaryBankAddress.encrypt(),
  //       "country_code": countryCode.encrypt(),
  //       "swift_code": swiftCode.encrypt(),
  //       "routing_number": routingNumber.encrypt(),
  //       if (narration.isNotEmpty) "narration": narration.encrypt(),
  //       "iban": iban.encrypt(),
  //       "bank_code": bankCode,
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> generateVerificationOtp() async {
  //   return apiClient.request(
  //     ApiEndpoint.generateOtp,
  //     MethodType.get,
  //     (json) => "",
  //     null,
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> verifyResetPinOtp(
  //     {required String otpCode}) {
  //   return apiClient
  //       .request(ApiEndpoint.verifyOtp, MethodType.post, (data) => "null", {
  //     "otp_code": otpCode.encrypt(),
  //   });
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> resetTransactionPin(
  //         {required String newTransactionPin,
  //         required String confirmTransactionPin,
  //         required String otpCode}) =>
  //     apiClient.request(
  //         ApiEndpoint.resetTransactionPIn, MethodType.post, (data) => "null", {
  //       "otp_code": otpCode.encrypt(),
  //       "new_transaction_pin": newTransactionPin.encrypt(),
  //       "confirm_transaction_pin": confirmTransactionPin.encrypt(),
  //     });

  // @override
  // Future<Either<Failure, ApiResponse<EwrData>>> generateEwrQrCode(
  //     List<Portfolio> portfolios) async {
  //   final currencyCode =
  //       await GetIt.I.get<IUserRepository>().fetchCurrencyMode();
  //   return apiClient.request(ApiEndpoint.generateEwrQrCode, MethodType.post,
  //       (data) {
  //     return EwrData.fromJson(data);
  //   }, {
  //     "securities": portfolios
  //         .map((item) => {
  //               "security_code": item.securityCode,
  //               if (item.locationCode != null &&
  //                   item.locationCode?.decrypt() != null)
  //                 "location_code": item.locationCode,
  //             })
  //         .toList(),
  //     "currency_code": currencyCode?.encrypt() ?? "NGN".encrypt()
  //   });
  // }

  // @override
  // Future<Either<Failure, ApiResponse<List<EwrData>>>> fetchQrCodes() =>
  //     apiClient.request(
  //       ApiEndpoint.qrCode,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => EwrData.fromJson(i)).toList(),
  //       null,
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> toggleQrCodeStatus(
  //     List<EwrData> data, bool isActive) {
  //   // log("data: ${isActive}");
  //   List<String> ewrIds = [];
  //   for (var item in data) {
  //     // log("ewr ids: $item");
  //     ewrIds.add(item.ewrId?.encrypt() ?? "");
  //   }

  //   return apiClient.request(
  //     ApiEndpoint.toggleQrCodeStatus,
  //     MethodType.patch,
  //     (data) => null,
  //     {
  //       "ewr_ids": ewrIds,
  //       "is_active": isActive ? "True".encrypt() : "False".encrypt(),
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<PDFDetails>>> activateEwr(String ewrId) {
  //   // log("ewr id: $ewrId");
  //   return apiClient.request<PDFDetails>(
  //     ApiEndpoint.activateEwr,
  //     MethodType.post,
  //     (data) => PDFDetails.fromJson(data['pdf_details']),
  //     {
  //       "ewr_id": ewrId,
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<String>>> updateIdCard(
  //     {required bool isBvn, required String idNumber}) {
  //   return apiClient.request<String>(
  //     ApiEndpoint.updateIdCard,
  //     MethodType.post,
  //     (data) => "",
  //     {
  //       "bvn": isBvn ? idNumber : "",
  //       "nin": isBvn ? "" : idNumber,
  //     },
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse>> updateNigerianUserBvn(
  //         {required bool isBvn, required String idNumber}) =>
  //     apiClient.request(
  //       ApiEndpoint.updateIndividualBvn,
  //       MethodType.post,
  //       (data) => "",
  //       {
  //         "bvn": isBvn ? idNumber : "",
  //         "nin": isBvn ? "" : idNumber,
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse>> updateNonNigerianUserBvn(
  //     {required File id}) async {
  //   String lastFourCharacters = id.path.substring(id.path.length - 4);
  //   return apiClient.request(
  //     ApiEndpoint.updateIndividualBvn,
  //     MethodType.post,
  //     (data) => null,
  //     FormData.fromMap({
  //       "id_card_image": await MultipartFile.fromFile(
  //         id.path,
  //         filename: 'id_card_image$lastFourCharacters',
  //       )
  //     }),
  //   );
  // }

  // @override
  // Future<Either<Failure, ApiResponse<List<OpenOrder>>>> openOrders(
  //         {String? page}) =>
  //     apiClient.request(
  //       ApiEndpoint.ordersUrl,
  //       MethodType.get,
  //       (data) {
  //         // log("message: $data");
  //         return (data as List).map((i) => OpenOrder.fromJson(i)).toList();
  //       },
  //       null,
  //       queryParameters: {"order_status": "Open", "page": page ?? 1},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<MatchedOrder>>>> matchedOrders(
  //         {String? page}) =>
  //     apiClient.request(
  //       ApiEndpoint.ordersUrl,
  //       MethodType.get,
  //       (data) {
  //         // log("message: $data");
  //         return (data as List).map((i) => MatchedOrder.fromJson(i)).toList();
  //       },
  //       null,
  //       queryParameters: {"order_status": "Matched", "page": page ?? 1},
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<List<CanceledOrder>>>> cancelledOrders(
  //         {String? page}) =>
  //     apiClient.request(
  //       ApiEndpoint.ordersUrl,
  //       MethodType.get,
  //       (data) => (data as List).map((i) => CanceledOrder.fromJson(i)).toList(),
  //       null,
  //       queryParameters: {
  //         "order_status": "Cancelled",
  //         "page": page ?? 1,
  //       },
  //     );

  // @override
  // Future<Either<Failure, ApiResponse<String>>> cancelOpenOrder(String tid) =>
  //     apiClient.request(
  //       "${ApiEndpoint.ordersUrl}$tid",
  //       MethodType.post,
  //       (data) => "",
  //       null,
  //     );
}
