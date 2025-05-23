import 'package:currency_formatter/currency_formatter.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:intl/intl.dart';

extension ItemToText on Object {
  String get displayText {
    // if (this is RegionData) {
    //   return (this as RegionData).name ?? "";
    // } else
    if (this is String) {
      return this as String;
    }
    throw Exception("Unsupported type");
  }
}

extension StringToText on String {
  String get cleanCurrencyTextToNormal {
    return trim()
        .replaceAll(GlobalVariables.nairaCurrencySymbol, "")
        .replaceAll(",", "")
        .replaceAll("%", "");
  }

  double get cleanCheckEmptyCurrencyText {
    if (isEmpty) {
      return double.tryParse("0") ?? 0.0;
    }
    return double.tryParse(cleanCurrencyTextToNormal) ?? 0.0;
  }

  double get cleanCheckPercentText {
    if (isEmpty) {
      return double.tryParse("0") ?? 0.0;
    }
    return double.tryParse(replaceAll("%", "").trim()) ?? 0.0;
  }

  String get formateCurrency {
    CurrencyFormat nairaSettings = CurrencyFormat(
      code: 'NGN',
      symbol: GlobalVariables.nairaCurrencySymbol,
      symbolSide: SymbolSide.left,
      thousandSeparator: ',',
      decimalSeparator: '.',
      symbolSeparator: ' ',
    );
    String currencyText =
        CurrencyFormatter.format(this, nairaSettings, decimal: 0);
    return currencyText;
  }
}

extension DateFormatter on DateTime {
  String get postDateFormat => DateFormat.MMMd().format(this);
  String get pickerDate => DateFormat('yyyy-MM-dd').format(this);
}
