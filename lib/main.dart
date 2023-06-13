// import 'package:document_scanner_flutter/configs/configs.dart';
// import 'package:flutter/material.dart';

// import 'package:document_scanner_flutter/document_scanner_flutter.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: TextButton(
//               onPressed: () async {
//                 var image = await DocumentScannerFlutter.launch(context,
//                     source: ScannerFileSource.CAMERA,
//                     labelsConfig: {
//                       ScannerLabelsConfig.ANDROID_NEXT_BUTTON_LABEL:
//                           "Next Step",
//                       ScannerLabelsConfig.ANDROID_OK_LABEL: "OK"
//                     });
//                 if (image != null) {
//                   print("jjjjjjjjjjjjjjjjjjj");
//                   print(image);
//                   // Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //         builder: (context) => imageView(
//                   //               imagePath: image,
//                   //               ip: IP,
//                   //               data: widget.MetaData,
//                   //               merge: true,
//                   //             )));
//                   //_scannedImage = image;
//                 }
//               },
//               child: Text('Hello World!')),
//         ),
//       ),
//     );
//   }
// }
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'app.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(const MyApp());
}

// /// CameraApp is the Main Application.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//             child: const Icon(Icons.camera_alt_outlined),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => CameraScreen()));
//             }),
//       ),
//     );
//   }
// }
