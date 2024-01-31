import 'package:buffalo_cashier/Modules/Burger.dart';
import 'package:get/get.dart';

import '../../../Utility/CommonFuncation.dart';

class OrderController extends GetxController {
  List<Burger> order = <Burger>[].obs;
  void addToOrder(Burger burger, {int quan = 1}) {
    if (order.contains(burger)) {
      int index = order.indexOf(burger);
      order[index] =
          order[index].copyWith(Quatatiy: order[index].Quatatiy + quan);
    } else {
      order.add(burger.copyWith(Quatatiy: burger.Quatatiy + quan));
    }
  }

  void removeOneFromOrder(Burger burger) {
    if (order.contains(burger)) {
      int index = order.indexOf(burger);
      if (order[index].Quatatiy > 1) {
        order[index] =
            order[index].copyWith(Quatatiy: order[index].Quatatiy - 1);
      } else {
        removeFromOrder(index);
      }
    } else {
      showSnackbar("Its not in Order", "Add one First");
    }
  }

  Burger getByIndex(int index) => order[index];
  int get length => order.length;
  void removeFromOrder(int Index) => order.removeAt(Index);

  double get total {
    double sum = 0;
    order.forEach((element) {
      sum += (element.Price * element.Quatatiy);
    });
    return sum;
  }

  double get totalaftertax {
    return total + Tax;
  }

  double get Tax {
    return total * (14 / 100);
  }

  void misc(Burger burger) {
    order.contains(burger);
  }
}
