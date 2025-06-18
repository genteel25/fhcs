class ApiEndpoint {
  static const signup = 'auth/signup';
  static const uploadFile = 'uploads';
  static const verifyOtp = 'auth/signup/otp/verify';
  static const nokDetail = 'auth/signup/details';
  static const bankList = 'data/banks';
  static const setPassword = 'auth/password/set';
  static const login = 'auth/login';
  static verifyFunding(String refNo) => "payments/$refNo/verify";
  static const verifyMembershipPayment = "auth/signup/payment/verify";
  static const setMonthlyContribution = "monthly-contribution/requests";
  static const userProfile = "account/profile";
  static const dashboard = "dashboard";
  static const initiateFunding = "payments/initiate";
  static const transactions = "transactions";
  static const initiateWithdrawal = "withdrawal-requests";
  static const referees = "data/cooperators";
  static const loanRequest = "loans";
  static const investmentType = "investment-types";
  static const loanRepayment = "repayments/loans";
  static const refereeRequest = "referees";
  static const investmentTenure = "investment-tenures";
  static const accountInfo = "dashboard/withdrawals";
  static const createInvestment = "investments";
}
