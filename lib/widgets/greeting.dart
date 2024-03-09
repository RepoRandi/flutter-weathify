import 'package:flutter/material.dart';

class GreetingWidget extends StatefulWidget {
  const GreetingWidget({super.key});

  @override
  State<GreetingWidget> createState() => _GreetingWidgetState();
}

class _GreetingWidgetState extends State<GreetingWidget> {
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    setState(() {
      _greeting = _getGreeting();
    });

    Future.delayed(const Duration(minutes: 1), _updateGreeting);
  }

  String _getGreeting() {
    DateTime now = DateTime.now();
    String greeting = '';

    if (now.hour < 12) {
      greeting = 'Good Morning';
    } else if (now.hour < 17) {
      greeting = 'Good Afternoon';
    } else if (now.hour < 20) {
      greeting = 'Good Evening';
    } else {
      greeting = 'Good Night';
    }

    return greeting;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _greeting,
      style: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
