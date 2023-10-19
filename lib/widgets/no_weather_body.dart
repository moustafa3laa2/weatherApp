import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'there is no weather 😔 start',
                style: TextStyle(fontSize: 28),
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(fontSize: 28),
            )
          ],
        ),
    );
  }
}