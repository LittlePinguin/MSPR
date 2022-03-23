import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as Vector;

class ArView extends StatefulWidget {
  ArView({Key? key}) : super(key: key);

  @override
  State<ArView> createState() => _ArViewState();
}

class _ArViewState extends State<ArView> {
  late ArCoreController arCoreController;
  late ArCoreNode node;

  void dispose() {
    super.dispose();
    arCoreController.dispose();
  }

  _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onPlaneDetected = _handleOnPlaneDetected;
  }

  _handleOnPlaneDetected(ArCorePlane plane) {
    if (node != null) {
      arCoreController.removeNode(nodeName: node.name);
    }
    _addsphere(arCoreController, plane);
  }

  _addsphere(ArCoreController controller, ArCorePlane plane) {
    final material = ArCoreMaterial(color: Colors.red);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    node = ArCoreNode(
      name: "sphere",
      shape: sphere,
      position: plane.centerPose.translation,
      rotation: plane.centerPose.rotation,
    );
    controller.addArCoreNode(node);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARVIEW"),
      ),
      body: ArCoreView(onArCoreViewCreated: _onArCoreViewCreated,
      enableUpdateListener: true,),
      
    );
  }
}
