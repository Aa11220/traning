import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../Widgets/HistoryPreview.dart';

class CalanderPage extends StatefulWidget {
  const CalanderPage({super.key});

  @override
  State<CalanderPage> createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text(
                "Attendance history",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: constraints.maxHeight * .04),
              ),
              Container(
                width: constraints.maxWidth * .91,
                height: MediaQuery.of(context).size.height * .32,
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * .02),
                child: SfDateRangePicker(
                  maxDate: DateTime.now(),
                  selectionMode: DateRangePickerSelectionMode.range,
                ),
              ),
              Container(
                  height: constraints.maxHeight * .46,
                  width: constraints.maxWidth * .91,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return HistoryCard();
                    },
                    itemCount: 4,
                  ))
            ],
          ),
        );
      },
    );
  }
}
