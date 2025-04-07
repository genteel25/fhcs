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

extension DateFormatter on DateTime {
  String get postDateFormat => DateFormat.MMMd().format(this);
  String get pickerDate => DateFormat('yyyy-MM-dd').format(this);
}
