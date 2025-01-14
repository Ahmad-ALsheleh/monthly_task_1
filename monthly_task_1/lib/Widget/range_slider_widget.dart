
import 'package:flutter/material.dart';
// ويدجت Range Slider
class RangeSliderWidget extends StatefulWidget {
  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues rangeValues = RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider'),
      ),
      body: Column(
        children: [
          Text(
              'القيم: ${rangeValues.start.toStringAsFixed(1)} - ${rangeValues.end.toStringAsFixed(1)}'),
          RangeSlider(
            values: rangeValues,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              rangeValues.start.round().toString(),
              rangeValues.end.round().toString(),
            ),
            onChanged: (values) {
              setState(() {
                rangeValues = values;
              });
            },
          ),
        ],
      ),
    );
  }
}