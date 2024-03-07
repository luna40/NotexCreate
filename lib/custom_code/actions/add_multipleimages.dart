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

List<Image> imagesList = [];

Future<List<String>> addMultipleimages(
  int? oldIndex,
  int newIndex,
  List<FFUploadedFile> newImages,
) async {
  List<FFUploadedFile> imagesList = []; // Define imagesList variable

  // Add your function code here!
  // Add the new images to the list
  if (oldIndex != null && oldIndex >= 0 && oldIndex < imagesList.length) {
    // If oldIndex is provided and valid, remove the images from oldIndex
    imagesList.removeRange(oldIndex, oldIndex + newImages.length);
  }

  imagesList.insertAll(
      newIndex, newImages); // Insert the new images at newIndex

  // Sort the imagesList alphabetically by file name
  imagesList.sort((a, b) => (a.name ?? '').compareTo(b.name ?? ''));

  // Return the updated list of image names
  return imagesList.map((image) => image.name ?? '').toList();
}
