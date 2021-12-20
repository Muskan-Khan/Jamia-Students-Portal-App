// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:async';
// import 'package:file_utils/file_utils.dart';
// import 'package:permission_handler/permission_handler.dart';

// class FileDownloader extends StatefulWidget {
//   final String pdfUrl;
//   const FileDownloader({Key? key, required this.pdfUrl}) : super(key: key);
//   @override
//   _FileDownloaderState createState() => _FileDownloaderState();
// }

// class _FileDownloaderState extends State<FileDownloader> {
// //  = "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf";

//   bool downloading = false;
//   var progress = "";
//   var path = "No Data";
//   var platformVersion = "Unknown";
//   var _onPressed;

//   @override
//   void initState() {
//     super.initState();
//     downloadFile();
//   }

// // String convertCurrentDateTimeToString() {
// //     String formattedDateTime =
// //     DateFormat('yyyyMMdd_kkmmss').format(DateTime.now()).toString();
// //     return formattedDateTime;
// //   }

//   Future<void> downloadFile() async {
//     Dio dio = Dio();
//     final status = await Permission.storage.request();
//     if (status.isGranted) {
//       String dirloc = "";
//       if (Platform.isAndroid) {
//         dirloc = "/sdcard/download/";
//       } else {
//         dirloc = (await getApplicationDocumentsDirectory()).path;
//       }
//       try {
//         FileUtils.mkdir([dirloc]);
//         await dio.download(widget.pdfUrl, dirloc + ".pdf",
//             onReceiveProgress: (receivedBytes, totalBytes) {
//           print('here 1');
//           setState(() {
//             downloading = true;
//             progress =
//                 ((receivedBytes / totalBytes) * 100).toStringAsFixed(0) + "%";
//             print(progress);
//           });
//           print('here 2');
//         });
//       } catch (e) {
//         print('catch catch catch');
//         print(e);
//       }

//       setState(() {
//         downloading = false;
//         progress = "Download Completed.";
//         path = dirloc + "Grade Card" + ".pdf";
//       });
//       print(path);
//       print('here give alert-->completed');
//     } else {
//       setState(() {
//         progress = "Permission Denied!";
//         _onPressed = () {
//           downloadFile();
//         };
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//       appBar: AppBar(
//         title: Text('File Downloader'),
//       ),
//       body: Center(
//           child: downloading
//               ? Container(
//                   height: 120.0,
//                   width: 200.0,
//                   child: Card(
//                     color: Colors.black,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         CircularProgressIndicator(),
//                         SizedBox(
//                           height: 10.0,
//                         ),
//                         Text(
//                           'Downloading File: $progress',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               : Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(path),
//                     MaterialButton(
//                       child: Text('Request Permission Again.'),
//                       onPressed: _onPressed,
//                       disabledColor: Colors.blueGrey,
//                       color: Colors.pink,
//                       textColor: Colors.white,
//                       height: 40.0,
//                       minWidth: 100.0,
//                     ),
//                   ],
//                 )));
// }