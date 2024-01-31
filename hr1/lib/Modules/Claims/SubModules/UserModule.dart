// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModule {
  final int id;
  final int user_name;
  UserModule({
    required this.id,
    required this.user_name,
  });

  UserModule copyWith({
    int? id,
    int? user_name,
  }) {
    return UserModule(
      id: id ?? this.id,
      user_name: user_name ?? this.user_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user_name': user_name,
    };
  }

  factory UserModule.fromMap(Map<String, dynamic> map) {
    return UserModule(
      id: map['id'] as int,
      user_name: map['user_name'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModule.fromJson(String source) => UserModule.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModule(id: $id, user_name: $user_name)';

  @override
  bool operator ==(covariant UserModule other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.user_name == user_name;
  }

  @override
  int get hashCode => id.hashCode ^ user_name.hashCode;
}
