import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class CameraScreen extends StatefulWidget {
  /// Default Constructor
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return CameraPreview(
      controller,
      child: Positioned.directional(
        textDirection: TextDirection.ltr,
        bottom: 30,
        end: 20,
        child: TextButton(
          onPressed: () async {
            final XFile pic = await controller.takePicture();
            final imgFile = File(pic.path);
          },
          child: const Icon(
            Icons.camera_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
