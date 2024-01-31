// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';


import 'SubModules/Employee.dart';
import 'SubModules/ExpensesMap.dart';
import 'SubModules/UserModule.dart';

class ClaimsModule {
  final int id;
  final int emp_number;
  final String status;
  final int added_by;
  final String createdDate;
  final String? submittedDate;
  final String reference;
  final List<Expenses> expenseslist;
  final EmployeeModule employee;
  final UserModule user;
  ClaimsModule({
    required this.id,
    required this.emp_number,
    required this.status,
    required this.added_by,
    required this.createdDate,
    this.submittedDate,
    required this.reference,
    required this.expenseslist,
    required this.employee,
    required this.user,
  });

  ClaimsModule copyWith({
    int? id,
    int? emp_number,
    String? status,
    int? added_by,
    String? createdDate,
    String? submittedDate,
    String? reference,
    List<Expenses>? expenseslist,
    EmployeeModule? employee,
    UserModule? user,
  }) {
    return ClaimsModule(
      id: id ?? this.id,
      emp_number: emp_number ?? this.emp_number,
      status: status ?? this.status,
      added_by: added_by ?? this.added_by,
      createdDate: createdDate ?? this.createdDate,
      submittedDate: submittedDate ?? this.submittedDate,
      reference: reference ?? this.reference,
      expenseslist: expenseslist ?? this.expenseslist,
      employee: employee ?? this.employee,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'emp_number': emp_number,
      'status': status,
      'added_by': added_by,
      'createdDate': createdDate,
      'submittedDate': submittedDate,
      'reference': reference,
      'expenseslist': expenseslist.map((x) => x.toMap()).toList(),
      'employee': employee.toMap(),
      'user': user.toMap(),
    };
  }

  factory ClaimsModule.fromMap(Map<String, dynamic> map) {
    return ClaimsModule(
      id: map['id'] as int,
      emp_number: map['emp_number'] as int,
      status: map['status'] as String,
      added_by: map['added_by'] as int,
      createdDate: map['createdDate'] as String,
      submittedDate: map['submittedDate'] != null ? map['submittedDate'] as String : null,
      reference: map['reference'] as String,
      expenseslist: List<Expenses>.from((map['expenseslist'] as List<int>).map<Expenses>((x) => Expenses.fromMap(x as Map<String,dynamic>),),),
      employee: EmployeeModule.fromMap(map['employee'] as Map<String,dynamic>),
      user: UserModule.fromMap(map['user'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ClaimsModule.fromJson(String source) => ClaimsModule.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClaimsModule(id: $id, emp_number: $emp_number, status: $status, added_by: $added_by, createdDate: $createdDate, submittedDate: $submittedDate, reference: $reference, expenseslist: $expenseslist, employee: $employee, user: $user)';
  }

  @override
  bool operator ==(covariant ClaimsModule other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.emp_number == emp_number &&
      other.status == status &&
      other.added_by == added_by &&
      other.createdDate == createdDate &&
      other.submittedDate == submittedDate &&
      other.reference == reference &&
      listEquals(other.expenseslist, expenseslist) &&
      other.employee == employee &&
      other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      emp_number.hashCode ^
      status.hashCode ^
      added_by.hashCode ^
      createdDate.hashCode ^
      submittedDate.hashCode ^
      reference.hashCode ^
      expenseslist.hashCode ^
      employee.hashCode ^
      user.hashCode;
  }
}
