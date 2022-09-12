import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityTestingWrapper extends StatefulWidget {
  const UnityTestingWrapper({super.key});

  @override
  UnityTestingState createState() => UnityTestingState();
}

class UnityTestingState extends State<UnityTestingWrapper> {
  late UnityWidgetController _unityWidgetController;

  get onUnityMessage => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unity Flutter Demo'),
        ),
        body: Card(
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: <Widget>[
              UnityWidget(
                onUnityCreated: onUnityCreated,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }
}
