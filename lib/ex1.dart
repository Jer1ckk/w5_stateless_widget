import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              HobbyCard(
                text: 'Travelling',
                backgroundColor: Colors.green,
                iconData: Icons.travel_explore,
              ),
              HobbyCard(
                text: 'Skatting',
                iconData: Icons.ice_skating,
                backgroundColor: Colors.grey,
              ),
              HobbyCard(text: 'Sleeping', iconData: Icons.bed),
            ],
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final IconData iconData;
  const HobbyCard({
    super.key,
    required this.text,
    required this.iconData,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(30),
      child: Center(
        child: Row(
          spacing: 10,
          children: [
            Icon(iconData, size: 36, color: Colors.white),
            SizedBox(width: 20),
            Text(text, style: TextStyle(fontSize: 36, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
