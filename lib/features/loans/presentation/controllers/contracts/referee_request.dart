abstract class RefereeRequestControllerContract {
  late bool isInvestment;
  void onApproveRequest(String requestId);
  void onRejectRequest(String requestId);
}
