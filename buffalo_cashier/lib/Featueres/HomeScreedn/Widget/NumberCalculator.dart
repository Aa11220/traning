import 'package:buffalo_cashier/Utility/Colors.dart';
import 'package:flutter/material.dart';

class NumberCalculator extends StatefulWidget {
  const NumberCalculator({super.key, required this.Text, required this.Price});
  final String Text;
  final String Price;
  @override
  State<NumberCalculator> createState() => _NumberCalculatorState();
}

class _NumberCalculatorState extends State<NumberCalculator> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
                child: FittedBox(
              child: Text(
                widget.Text,
                style: TextStyle(fontSize: constraints.maxHeight * .24),
              ),
            )),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * .10),
                      child: Text(
                        "${widget.Price}",
                        style: TextStyle(
                            fontSize: constraints.maxHeight * .2,
                            color: Color(0xFFBD0048)),
                      )),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
