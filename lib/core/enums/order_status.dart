enum OrderStatus { pending, completed, rejected }

extension OrderStatusX on OrderStatus {
  // 🔹 النص العربي المعروض للمستخدم
  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'قيد الانتظار';
      case OrderStatus.completed:
        return 'مكتمل';
      case OrderStatus.rejected:
        return 'مرفوض';
    }
  }

  static OrderStatus fromApi(String? value) {
    switch ((value ?? '').toUpperCase()) {
      case 'COMPLETED':
        return OrderStatus.completed;
      case 'REJECTED':
        return OrderStatus.rejected;
      case 'PENDING':
      default:
        return OrderStatus.pending;
    }
  }

  String get apiValue {
    switch (this) {
      case OrderStatus.pending:
        return 'PENDING';
      case OrderStatus.completed:
        return 'COMPLETED';
      case OrderStatus.rejected:
        return 'REJECTED';
    }
  }
}
