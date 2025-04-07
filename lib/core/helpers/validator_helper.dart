class ValidatorHelper {
  static String? validateConfirmPassword(
      String password, String confirmPassword) {
    if (confirmPassword.isEmpty) {
      return 'Confirm password is required';
    }
    if (confirmPassword != password) {
      return 'Passwords do not match';
    }
    return null; // Valid
  }
}
