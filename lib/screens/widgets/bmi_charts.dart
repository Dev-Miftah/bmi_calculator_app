import 'package:flutter/material.dart';

class BmiCharts extends StatelessWidget {
  const BmiCharts({
    super.key,
    required this.ans,
  });

  final double? ans;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Very Severely Underweight',
                style: textStyle(
                  (ans?.toDouble() ?? 0) <= 15.9 ? Colors.green : Colors.black,
                )),
            const Spacer(),
            Text(
              '<- 15.9',
              style: textStyle(
                (ans?.toDouble() ?? 0) <= 15.9 ? Colors.green : Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Severely Underweight',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 16.0 &&
                          (ans?.toDouble() ?? 0) <= 16.9)
                      ? Colors.green
                      : Colors.black,
                )),
            Text(
              '16.0 - 16.9',
              style: textStyle(
                ((ans?.toDouble() ?? 0) >= 16.0 &&
                        (ans?.toDouble() ?? 0) <= 16.9)
                    ? Colors.green
                    : Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Underweight',
              style: textStyle(
                ((ans?.toDouble() ?? 0) >= 17.0 &&
                        (ans?.toDouble() ?? 0) <= 18.4)
                    ? Colors.green
                    : Colors.black,
              ),
            ),
            Text('17.0 - 18.4',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 17.0 &&
                          (ans?.toDouble() ?? 0) <= 18.4)
                      ? Colors.green
                      : Colors.black,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Normal',
              style: textStyle(
                ((ans?.toDouble() ?? 0) >= 18.5 &&
                        (ans?.toDouble() ?? 0) <= 24.9)
                    ? Colors.green
                    : Colors.black,
              ),
            ),
            Text(
              '18.5 - 24.9',
              style: textStyle(
                ((ans?.toDouble() ?? 0) >= 18.5 &&
                        (ans?.toDouble() ?? 0) <= 24.9)
                    ? Colors.green
                    : Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Overweight',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 25.0 &&
                          (ans?.toDouble() ?? 0) <= 29.9)
                      ? Colors.green
                      : Colors.black,
                )),
            Text('25.0 - 29.9',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 25.0 &&
                          (ans?.toDouble() ?? 0) <= 29.9)
                      ? Colors.green
                      : Colors.black,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Obese Class |',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 30.0 &&
                          (ans?.toDouble() ?? 0) <= 34.9)
                      ? Colors.green
                      : Colors.black,
                )),
            Text('30.0 - 34.9',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 30.0 &&
                          (ans?.toDouble() ?? 0) <= 34.9)
                      ? Colors.green
                      : Colors.black,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Obese Class ||',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 35.0 &&
                          (ans?.toDouble() ?? 0) <= 39.9)
                      ? Colors.green
                      : Colors.black,
                )),
            Text('35.0 - 39.9',
                style: textStyle(
                  ((ans?.toDouble() ?? 0) >= 35.0 &&
                          (ans?.toDouble() ?? 0) <= 39.9)
                      ? Colors.green
                      : Colors.black,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Obese Class |||',
              style: textStyle(
                (ans?.toDouble() ?? 0) >= 45.0 ? Colors.green : Colors.black,
              ),
            ),
            Text(
              '>= 45.0',
              style: textStyle(
                (ans?.toDouble() ?? 0) >= 45.0 ? Colors.green : Colors.black,
              ),
            )
          ],
        ),
      ],
    );
  }

  textStyle(Color color) {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
        letterSpacing: 0.4);
  }
}
