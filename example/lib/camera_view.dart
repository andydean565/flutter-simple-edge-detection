import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:simple_edge_detection/edge_detection.dart';

class CameraView extends StatefulWidget {
  CameraView({this.controller});

  final CameraController controller;

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  bool predictingEdges = false;
  EdgeDetectionResult predication;

  @override
  Widget build(BuildContext context) {
    return _getCameraPreview();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _getCameraPreview() {
    if (widget.controller == null || !widget.controller.value.isInitialized) {
      return Container();
    }

    return Center(
        child: AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: CameraPreview(widget.controller)));
  }
}
