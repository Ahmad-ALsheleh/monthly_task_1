import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

// ويدجت اختيار الوقت
class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay? selectedTime;

  Future<void> _pickTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      setState(() {
        selectedTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اختيار الوقت'),
      ),
      body: Column(
        children: [
          Text(selectedTime == null
              ? 'لم يتم اختيار وقت بعد'
              : 'الوقت المختار: ${selectedTime!.format(context)}'),
          ElevatedButton(
            onPressed: _pickTime,
            child: Text('اختر الوقت'),
          ),
        ],
      ),
    );
  }
}
