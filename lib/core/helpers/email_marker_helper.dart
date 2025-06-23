class EmailMasker {
  /// Transforms an email address to the format: b*******i@*****.com
  ///
  /// Keeps:
  /// - First character of the local part (before @)
  /// - Last character of the local part (before @)
  /// - First character of the domain part (after @, before the last dot)
  /// - The top-level domain (e.g., .com, .org, .co.uk)
  ///
  /// Masks:
  /// - Middle characters of the local part with '*'
  /// - Middle characters of the domain part with '*'
  ///
  /// Args:
  ///   emailAddress: The email address to mask.
  ///
  /// Returns:
  ///   The masked email address, or "Invalid Email Format" if the input is not valid.
  static String maskEmail(String? emailAddress) {
    if (emailAddress == null || !emailAddress.contains('@')) {
      return "Invalid Email Format";
    }

    final parts = emailAddress.split('@');
    final localPart = parts[0];
    final domainPart = parts[1];

    String maskedLocalPart;
    if (localPart.length <= 2) {
      // If local part is 2 or fewer characters, show as is (e.g., "jo", "a")
      maskedLocalPart = localPart;
    } else {
      // Keep first and last, mask middle
      maskedLocalPart = localPart[0] +
          '*' * (localPart.length - 2) +
          localPart[localPart.length - 1];
    }

    String maskedDomainPart;
    if (!domainPart.contains('.')) {
      // Handle cases like "example@localhost" where there's no TLD
      maskedDomainPart = '*' * domainPart.length;
    } else {
      final lastDotIndex = domainPart.lastIndexOf('.');
      final domainName = domainPart.substring(0, lastDotIndex);
      final tld = domainPart.substring(lastDotIndex + 1);

      String maskedDomainName;
      if (domainName.length <= 1) {
        // If domain name part is 1 or fewer characters, show as is (e.g., "g", "a")
        maskedDomainName = domainName;
      } else {
        // Keep first, mask rest of the domain name
        maskedDomainName = domainName[0] + '*' * (domainName.length - 1);
      }
      maskedDomainPart = '$maskedDomainName.$tld';
    }

    return '$maskedLocalPart@$maskedDomainPart';
  }
}
