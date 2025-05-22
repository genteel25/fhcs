class ApiEndpoint {
  static const signup = 'auth/signup';
  static const uploadFile = 'uploads';
  static const verifyOtp = 'auth/signup/otp/verify';
  static const nokDetail = 'auth/signup/details';
  static const bankList = 'data/banks';
  static const setPassword = 'auth/password/set';
  static const login = 'auth/login';
  static verifyMembershipPayment(String refNo) => "payments/$refNo/verify";
}
