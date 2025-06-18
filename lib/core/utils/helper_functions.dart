import 'dart:async';

void startCountdown(int minutes) {
  int totalSeconds = minutes * 60;

  Timer.periodic(Duration(seconds: 1), (timer) {
    int mins = totalSeconds ~/ 60;
    int secs = totalSeconds % 60;
    print('$mins:${secs.toString().padLeft(2, '0')}'); // Example: 4:59, 4:58...

    if (totalSeconds == 0) {
      timer.cancel();
      print("Countdown finished!");
    }

    totalSeconds--;
  });
}

String getCardType(String cardNumber) {
  final cleaned = cardNumber.replaceAll(RegExp(r'\s+|-'), '');

  if (RegExp(r'^4[0-9]{6,}$').hasMatch(cleaned)) {
    return 'Visa';
  } else if (RegExp(r'^5[1-5][0-9]{5,}$').hasMatch(cleaned) ||
      RegExp(r'^2(2[2-9][0-9]{2,}|[3-6][0-9]{3,}|7[01][0-9]{2,}|720[0-9]{2,})$')
          .hasMatch(cleaned)) {
    return 'MasterCard';
  } else if (RegExp(r'^3[47][0-9]{5,}$').hasMatch(cleaned)) {
    return 'American Express';
  } else if (RegExp(r'^6(?:011|5[0-9]{2})[0-9]{3,}$').hasMatch(cleaned)) {
    return 'Discover';
  }

  return 'Unknown';
}

String formatMaskedCard(String cardNumber) {
  final cleaned = cardNumber.replaceAll(RegExp(r'\s+|-'), '');

  if (cleaned.length < 10) return cleaned; // Not enough digits to mask

  final start = cleaned.substring(0, 6);
  final end = cleaned.substring(cleaned.length - 4);
  final maskedLength = cleaned.length - 10;

  final masked = '*' * maskedLength;

  return '${start.substring(0, 4)} ${start.substring(4)}$masked ${end}';
}

String convertMonthsToYears(int totalMonths) {
  if (totalMonths < 0) {
    return "Invalid input: Months cannot be negative.";
  }

  if (totalMonths == 0) {
    return "0 years"; // Or "0 months", depending on desired output for zero
  }

  final int years = totalMonths ~/ 12; // Integer division for full years
  final int remainingMonths = totalMonths % 12; // Modulo for remaining months

  String result = '';

  if (years > 0) {
    result += '$years year${years > 1 ? 's' : ''}';
  }

  if (remainingMonths > 0) {
    if (years > 0) {
      result += ' and ';
    }
    result += '$remainingMonths month${remainingMonths > 1 ? 's' : ''}';
  }

  // Handle case where years is 0 but months is not (e.g., 5 months)
  if (years == 0 && remainingMonths > 0) {
    result = '$remainingMonths month${remainingMonths > 1 ? 's' : ''}';
  }

  return result;
}
