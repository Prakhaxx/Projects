import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temp;
  final IconData icon;
  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.temp,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 90,
            child: Column(
              children: [
                Text(
                  time,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
                const SizedBox(
                  height: 8,
                ),
                Icon(
                  icon,
                  size: 30,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  temp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
