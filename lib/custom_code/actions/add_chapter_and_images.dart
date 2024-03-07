// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<AddChapterAndImagesStruct?> addChapterAndImages(
  String? chapterName,
  int? indexat,
) async {
  // Create an instance of AddChapterAndImagesStruct
  AddChapterAndImagesStruct chapterInfo = AddChapterAndImagesStruct(
    chapterName: chapterName,
    startIndex: indexat,
  );

  // You may perform additional operations here if needed

  // Return the created instance
  return chapterInfo;
}
