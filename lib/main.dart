import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SfRadialGauge(
            title: const GaugeTitle(
              text: 'Velocímetro',
              textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
              ),
            enableLoadingAnimation: true,
            animationDuration: 4000,
            axes: <RadialAxis>[RadialAxis(
              minimum: 0,
              maximum: 150,
              pointers: const <GaugePointer>[NeedlePointer(
                value: 90,
                enableAnimation: true,
                )], ranges:<GaugeRange>[
                  GaugeRange(startValue: 0, endValue: 50, color: Colors.green,),
                  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange,),
                  GaugeRange(startValue: 100, endValue: 150, color: Colors.red,)
                ], annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      '90.0 MPH',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    positionFactor: 0.5,
                    angle: 90,
                  )
                ],
            )],
          ),
        ),
      ));
  }
}
