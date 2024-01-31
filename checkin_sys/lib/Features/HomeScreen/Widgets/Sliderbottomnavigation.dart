import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderBottomNavigation extends StatefulWidget {
  const SliderBottomNavigation({super.key, required this.Text,  this.initial=const Color(0xFFD6D6D6), required this.Do});
  final String Text;
  final Color initial;
  final Function Do;
  @override
  State<SliderBottomNavigation> createState() => _SliderBottomNavigationState();
}

class _SliderBottomNavigationState extends State<SliderBottomNavigation> {
  @override
  final _controller = ActionSliderController();

  Widget build(BuildContext context) {
    return ActionSlider.custom(
      sliderBehavior: SliderBehavior.move,
      width: 500.0,
      controller: _controller,
      height: 60.0,
      toggleWidth: 60.0,
      toggleMargin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      backgroundColor: Colors.green,
      foregroundChild: DecoratedBox(
          decoration:
              BoxDecoration(color: Color(0xFFFFFFFF), shape: BoxShape.circle),
          child: const Icon(Icons.double_arrow, color: Color(0xFFD6D6D6))),
      foregroundBuilder: (context, state, child) => child!,
      outerBackgroundBuilder: (context, state, child) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Color.lerp(
                widget.initial, Color(0xFFEBBD63), state.position)),
        margin: EdgeInsets.zero,
        child: Center(
            child: Text(
          widget.Text,
          style: TextStyle(color: Color(0xFFFFFFFF)),
        )),
      ),
      backgroundBorderRadius: BorderRadius.circular(24),
      action: (controller) async {
        // controller.failure();

widget.Do();
        // Navigator.pop(context);
        // controller.jump(1);
        // controller.success();
        // controller.loading(); //starts loading animation
        // await Future.delayed(const Duration(seconds: 3));
        // controller.success(); //starts success animation
        // await Future.delayed(const Duration(seconds: 1));
        // controller.reset(); //resets the slider
      },
    );
  }
}
