// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Burger {
  final String ItemName;
  final int Quatatiy;
  final double Price;
  bool Isselected = false;
  Burger({
    required this.ItemName,
    required this.Quatatiy,
    required this.Price,
    /* required */ this.Isselected = false,
  });

  Burger copyWith({
    String? ItemName,
    int? Quatatiy,
    double? Price,
    bool? Isselected,
  }) {
    return Burger(
      ItemName: ItemName ?? this.ItemName,
      Quatatiy: Quatatiy ?? this.Quatatiy,
      Price: Price ?? this.Price,
      Isselected: Isselected ?? this.Isselected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ItemName': ItemName,
      'Quatatiy': Quatatiy,
      'Price': Price,
      'Isselected': Isselected,
    };
  }

  factory Burger.fromMap(Map<String, dynamic> map) {
    return Burger(
      ItemName: map['ItemName'] as String,
      Quatatiy: map['Quatatiy'] as int,
      Price: map['Price'] as double,
      Isselected: map['Isselected'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Burger.fromJson(String source) =>
      Burger.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Burger(ItemName: $ItemName, Quatatiy: $Quatatiy, Price: $Price, Isselected: $Isselected)';
  }

  @override
  bool operator ==(covariant Burger other) {
    if (identical(this, other)) return true;

    return other.ItemName == ItemName &&
        /* other.Quatatiy == Quatatiy */
        other.Price == Price /* other.Isselected == Isselected */;
  }

  @override
  int get hashCode {
    return ItemName.hashCode ^
        /*  Quatatiy.hashCode ^ */
        Price.hashCode /* Isselected.hashCode */;
  }
}
