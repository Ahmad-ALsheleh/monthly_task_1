import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ويدجت اختيار التاريخ
class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اختيار التاريخ'),
      ),
      body: Column(
        children: [
          Text(selectedDate == null
              ? 'لم يتم اختيار تاريخ بعد'
              : 'التاريخ المختار: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}'),
          ElevatedButton(
            onPressed: _pickDate,
            child: Text('اختر التاريخ'),
          ),
        ],
      ),
    );
  }
}
