import 'package:buffalo_cashier/Featueres/HomeScreedn/Widget/NumberCalculator.dart';
import 'package:buffalo_cashier/Featueres/HomeScreedn/Widget/Pill.dart';
import 'package:buffalo_cashier/Modules/Burger.dart';
import 'package:buffalo_cashier/Utility/CommonFuncation.dart';
import 'package:buffalo_cashier/Utility/DummyData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../Utility/Colors.dart';
import '../Controller/Order_Controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _PageController = PageController(initialPage: 0);
  @override
  void dispose() {
    // TODO: implement dispose
    _PageController.dispose();
    super.dispose();
  }

  int selectedIndex = -1;
  Burger? Selected_for = null;
  int selected = 0;
  int chossen = 0;
  TextEditingController amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: GNav(
        tabMargin: EdgeInsets.all(12),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * .02),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textStyle:
            TextStyle(fontSize: MediaQuery.of(context).size.height * .02),
        tabBackgroundColor: background,
        color: Color(0xFFFE8081),
        activeColor: Color(0xFFD61355),
        haptic: false,
        gap: 8,
        iconSize: MediaQuery.of(context).size.height * .03,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.person,
            text: "User",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Shop",
          ),
          GButton(icon: Icons.messenger, text: "Message"),
        ],
      ),
      body: Row(
        children: [
          Container(
            color: Color(0xFFFFCCCB),
            width: MediaQuery.of(context).size.width * .20,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (chossen == 1) {
                                  chossen = 0;
                                } else {
                                  chossen = 1;
                                }
                                _PageController.animateToPage(chossen,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              });
                            },
                            child: Stack(children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  color: !(chossen == 1)
                                      ? Colors.white
                                      : Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                width: !(chossen == 1)
                                    ? MediaQuery.of(context).size.width * .12
                                    : MediaQuery.of(context).size.width * .17,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              ),
                              Image.asset(
                                "Assets/Images/Icons/image2.png",
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              )
                            ]),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (chossen == 2) {
                                  chossen = 0;
                                } else {
                                  chossen = 2;
                                }
                              });
                            },
                            child: Stack(children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  color: !(chossen == 2)
                                      ? Colors.white
                                      : Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                width: !(chossen == 2)
                                    ? MediaQuery.of(context).size.width * .12
                                    : MediaQuery.of(context).size.width * .17,
                                // width: MediaQuery.of(context).size.width * .16,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              ),
                              Image.asset(
                                "Assets/Images/Icons/image2.png",
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              )
                            ]),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (chossen == 3) {
                                  chossen = 0;
                                } else {
                                  chossen = 3;
                                }
                              });
                            },
                            child: Stack(children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  color: !(chossen == 3)
                                      ? Colors.white
                                      : Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                width: !(chossen == 3)
                                    ? MediaQuery.of(context).size.width * .12
                                    : MediaQuery.of(context).size.width * .18,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              ),
                              Image.asset(
                                "Assets/Images/Icons/image2.png",
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                              )
                            ]),
                          )),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Theme(
                    data: ThemeData(
                      colorScheme:
                          ColorScheme.fromSeed(seedColor: ButtonBackground),
                      useMaterial3: true,
                    ),
                    child: Container(
                        child: PageView(
                      allowImplicitScrolling: false,
                      controller: _PageController,
                      children: [
                        Pill(),
                        GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      2, // number of items in each row
                                  mainAxisSpacing: 8.0, // spacing between rows
                                  crossAxisSpacing: 8.0,
                                  childAspectRatio: .8),
                          itemCount: Items.length,
                          itemBuilder: (context, index) {
                            // final item = Items[index];
                            // bool isSelected = index == selectedIndex;
                            return LayoutBuilder(
                              builder: (context, constraints) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(15),
                                    elevation: 2,
                                    child: Container(
                                      child: FittedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                if (index != selectedIndex) {
                                                  setState(() {
                                                    selectedIndex = index;
                                                    for (int i = 0;
                                                        i < Items.length;
                                                        i++) {
                                                      Items[i].Isselected =
                                                          i == selectedIndex;
                                                    }
                                                    Selected_for = Items[index];
                                                  });
                                                } else {
                                                  setState(() {
                                                    Items[index].Isselected =
                                                        false;
                                                    selectedIndex = -1;
                                                    Selected_for = null;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Items[index]
                                                            .Isselected
                                                        ? Colors.pink
                                                        : Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                width:
                                                    constraints.maxWidth * .9,
                                                height:
                                                    constraints.maxHeight * .7,
                                                child: Image.asset(
                                                  "Assets/Images/BURGERR.png",
                                                  // width: constraints.maxWidth *
                                                  //     .45,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width:
                                                  constraints.maxWidth * 1.18,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "${Items[index].ItemName}",
                                                  style: TextStyle(
                                                      fontSize:
                                                          constraints.maxWidth *
                                                              .1),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  constraints.maxHeight * .4,
                                              width:
                                                  constraints.maxWidth * 1.19,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 2),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // Text(
                                                    //   '\$' +
                                                    //       Items[index]
                                                    //           .Price
                                                    //           .toStringAsFixed(
                                                    //               2),
                                                    //   style: TextStyle(
                                                    //       fontWeight:
                                                    //           FontWeight.bold,
                                                    //       fontSize: MediaQuery.of(
                                                    //                   context)
                                                    //               .size
                                                    //               .height *
                                                    //           0.04,
                                                    //       color: Color(
                                                    //           0xFFD61355)),
                                                    // ),
                                                    RichText(
                                                      text: TextSpan(
                                                        text: '\$' +
                                                            Items[index]
                                                                .Price
                                                                .toStringAsFixed(
                                                                    0),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.04,
                                                            color: Color(
                                                                0xFFD61355)),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: "." +
                                                                  Items[index]
                                                                      .Price
                                                                      .toStringAsFixed(
                                                                          2)
                                                                      .split(
                                                                          ".")[1],
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.03,
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          constraints.maxWidth *
                                                              .02,
                                                    ),
                                                    IconButton.filled(
                                                        constraints: BoxConstraints(
                                                            minWidth: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04,
                                                            minHeight: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                        // style: ButtonStyle(maximumSize: ),
                                                        onPressed: () {
                                                          Get.find<
                                                                  OrderController>()
                                                              .removeOneFromOrder(
                                                                  Items[index]);
                                                        },
                                                        icon: Icon(
                                                          Icons.remove,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .023,
                                                        )),

                                                    IconButton.filled(
                                                      constraints: BoxConstraints(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .04,
                                                          minHeight:
                                                              MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .04),
                                                      onPressed: () {
                                                        Get.find<
                                                                OrderController>()
                                                            .addToOrder(
                                                                Items[index]);
                                                      },
                                                      icon: Icon(Icons.add,
                                                          color: Colors.white,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .023),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ) /*  !chossen
                          ? 
                          : */
                        // color: Colors.red,
                        /* Container()  */ /* GridView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // number of items in each row
                          mainAxisSpacing: 8.0, // spacing between rows
                          crossAxisSpacing: 8.0, /* childAspectRatio: 0.8 */
                        ),
                        itemCount: Items.length,
                        itemBuilder: (context, index) {
                          // final item = Items[index];
                          // bool isSelected = index == selectedIndex;
                          return Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 2,
                            child: FittedBox(
                              child: Container(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (index != selectedIndex) {
                                          setState(() {
                                            selectedIndex = index;
                                            for (int i = 0;
                                                i < Items.length;
                                                i++) {
                                              Items[i].Isselected =
                                                  i == selectedIndex;
                                            }
                                            Selected_for = Items[index];
                                          });
                                        } else {
                                          setState(() {
                                            Items[index].Isselected = false;
                                            selectedIndex = -1;
                                            Selected_for = null;
                                          });
                                        }
                                      },
                                      child: Container(
                                        color: Items[index].Isselected
                                            ? Colors.pink
                                            : Colors.transparent,
                                        child: Image.asset(
                                          "Assets/Images/BURGERR.png",
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${Items[index].ItemName}",
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${Items[index].Price}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton.filled(
                                            onPressed: () {
                                              Get.find<OrderController>()
                                                  .removeOneFromOrder(
                                                      Items[index]);
                                            },
                                            icon: Icon(Icons.remove)),
                                        IconButton.filled(
                                            onPressed: () {
                                              Get.find<OrderController>()
                                                  .addToOrder(Items[index]);
                                            },
                                            icon: Icon(Icons.add))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ), */
                        ),
                  ),
                ),
                Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * .03),
                            decoration: InputDecoration(),
                            controller: amount,
                            readOnly: true,
                            enabled: false,
                          ),
                          _BuildCalculator(context, amount, Selected_for),
                          Expanded(
                            child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                          child: Obx(
                                        () => NumberCalculator(
                                            Text: "Total",
                                            Price: Get.find<OrderController>()
                                                .total
                                                .toStringAsFixed(2)),
                                      )),
                                      Expanded(
                                        child: Obx(
                                          () => NumberCalculator(
                                              Text: "Added Tax",
                                              Price: Get.find<OrderController>()
                                                  .Tax
                                                  .toStringAsFixed(2)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Obx(
                                            () => NumberCalculator(
                                                Text: "Total After Tax",
                                                Price:
                                                    Get.find<OrderController>()
                                                        .totalaftertax
                                                        .toStringAsFixed(2)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Obx(
                                        () => NumberCalculator(
                                            Text: "Dine in",
                                            Price: Get.find<OrderController>()
                                                .totalaftertax
                                                .toStringAsFixed(2)),
                                      )),
                                      Expanded(
                                        child: Obx(
                                          () => NumberCalculator(
                                              Text: "Take away",
                                              Price: Get.find<OrderController>()
                                                  .total
                                                  .toStringAsFixed(2)),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

Container _BuildCalculator(BuildContext context,
    TextEditingController controller, Burger? SelectBurger) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .055,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "1";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "2";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "3";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .055,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "4";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "5";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "6";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .055,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "7";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "8";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "9";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .055,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (SelectBurger == null ||
                              controller.text.isEmpty ||
                              controller.text == "") {
                            showSnackbar("Select item First",
                                "Choose Item From Grid and enter the quantity");
                          } else {
                            int? temp = int.tryParse(controller.text);
                            Get.find<OrderController>()
                                .addToOrder(SelectBurger, quan: temp!);
                            controller.text = "";
                            Get.snackbar(
                              "Done",
                              "Item added",
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          }
                        },
                        child: Center(
                          child: FittedBox(
                            child: Icon(
                              Icons.done,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.text += "0";
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFFEE5E5),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onLongPress: () => controller.clear(),
                        onTap: () {
                          if (controller.text.isNotEmpty) {
                            controller.text = controller.text
                                .substring(0, controller.text.length - 1);
                          }
                        },
                        child: Center(
                          child: FittedBox(
                            child: Icon(
                              Icons.clear,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
