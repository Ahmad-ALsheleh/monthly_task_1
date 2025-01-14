// ويدجت Slider
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        children: [
          Text('القيمة: ${sliderValue.toStringAsFixed(1)}'),
          Slider(
            value: sliderValue,
            min: 0,
            max: 100,
            divisions: 10,
            label: sliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
