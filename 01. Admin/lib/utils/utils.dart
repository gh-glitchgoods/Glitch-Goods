import 'package:intl/intl.dart';

class Utils {
  ///Utility Function to format Date.
  static String formatDate(DateTime? pickedDate) {
    final formatter = DateFormat('dd MMM yyyy');
    if (pickedDate != null) {
      return formatter.format(pickedDate);
    } else {
      return 'No Date Picked';
    }
  }

  ///Utility Function to format Time.
  static String formatTime(DateTime? pickedTime) {
    final formatter = DateFormat('hh:mm a');
    if (pickedTime != null) {
      return formatter.format(pickedTime);
    } else {
      return 'No Time Picked';
    }
  }

  static String formatRupees(double? amount) {
    final formatter = NumberFormat.currency(
      locale: 'en_IN', // Indian English locale for comma separation
      symbol: ' ₹ ', // Rupee symbol
      decimalDigits: 0, // No decimal places for whole rupees
    );
    if (amount != null) {
      return formatter.format(amount);
    } else {
      return '₹0'; // Default value if amount is null
    }
  }
}
