import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Modules/Burger.dart';
import '../Controller/Order_Controller.dart';

class Pill extends StatefulWidget {
  const Pill({super.key});

  @override
  State<Pill> createState() => _PillState();
}

class _PillState extends State<Pill> {
  // List<Burger> order = [];

  @override
  Widget build(BuildContext context) {
    var order = Get.find<OrderController>().order;

    return Obx(
      () => Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Item Name",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .023),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Quatatiy",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .023),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Price",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .023),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Delete",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .023),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          order[index].ItemName,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .023),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                          child: Text(
                        order[index].Quatatiy.toString(),
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * .023),
                      )),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          (order[index].Price * order[index].Quatatiy)
                              .toStringAsFixed(2),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .023),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Get.find<OrderController>()
                                  .removeFromOrder(index);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: MediaQuery.of(context).size.height * .023,
                            )),
                      ),
                    ),
                  ],
                );
              },
              itemCount: order.length,
            ),
          ),
        ],
      ),
    );
  }
}
