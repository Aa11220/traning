// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Expenses {
  final int request_id;
  final String date;
  final String amount;
  Expenses({
    required this.request_id,
    required this.date,
    required this.amount,
  });

  Expenses copyWith({
    int? request_id,
    String? date,
    String? amount,
  }) {
    return Expenses(
      request_id: request_id ?? this.request_id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request_id': request_id,
      'date': date,
      'amount': amount,
    };
  }

  factory Expenses.fromMap(Map<String, dynamic> map) {
    return Expenses(
      request_id: map['request_id'] as int,
      date: map['date'] as String,
      amount: map['amount'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Expenses.fromJson(String source) => Expenses.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Expenses(request_id: $request_id, date: $date, amount: $amount)';

  @override
  bool operator ==(covariant Expenses other) {
    if (identical(this, other)) return true;
  
    return 
      other.request_id == request_id &&
      other.date == date &&
      other.amount == amount;
  }

  @override
  int get hashCode => request_id.hashCode ^ date.hashCode ^ amount.hashCode;
}
