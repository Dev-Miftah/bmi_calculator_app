import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiRadialMeter extends StatelessWidget {
  const BmiRadialMeter({
    super.key,
    required this.ans,
  });

  final double? ans;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(minimum: 15, maximum: 40,
                  ranges: <GaugeRange>[
                    GaugeRange(startValue: 15, endValue: 18, color:Colors.red),
                    GaugeRange(startValue: 18,endValue: 25,color: Colors.green),
                    GaugeRange(startValue: 25,endValue: 40,color: Colors.yellow)],
                  pointers: <GaugePointer>[
                    NeedlePointer(value: ans?.toDouble() ?? 0)],
                  annotations: const <GaugeAnnotation>[
                    GaugeAnnotation(widget: Text('40.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        angle: 90, positionFactor: 0.5
                    )]
              )])
    );
  }
}