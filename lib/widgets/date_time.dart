import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  String _currentDateTime = '';

  @override
  void initState() {
    super.initState();
    _updateDateTime();
  }

  void _updateDateTime() {
    setState(() {
      _currentDateTime = _getCurrentDateTime();
    });

    Future.delayed(const Duration(seconds: 1), _updateDateTime);
  }

  String _getCurrentDateTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE dd MMMM •').format(now);
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    return '$formattedDate $formattedTime';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _currentDateTime,
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
    );
  }
}
