// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EmployeeModule {
  final int emp_number;
  final String employeeName;
  EmployeeModule({
    required this.emp_number,
    required this.employeeName,
  });

  EmployeeModule copyWith({
    int? emp_number,
    String? employeeName,
  }) {
    return EmployeeModule(
      emp_number: emp_number ?? this.emp_number,
      employeeName: employeeName ?? this.employeeName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emp_number': emp_number,
      'employeeName': employeeName,
    };
  }

  factory EmployeeModule.fromMap(Map<String, dynamic> map) {
    return EmployeeModule(
      emp_number: map['emp_number'] as int,
      employeeName: map['employeeName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeModule.fromJson(String source) =>
      EmployeeModule.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'EmployeeModule(emp_number: $emp_number, employeeName: $employeeName)';

  @override
  bool operator ==(covariant EmployeeModule other) {
    if (identical(this, other)) return true;

    return other.emp_number == emp_number && other.employeeName == employeeName;
  }

  @override
  int get hashCode => emp_number.hashCode ^ employeeName.hashCode;
}
