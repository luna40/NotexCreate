import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int indexingfunction(
  List<FFUploadedFile>? imagesUploaded,
  List<FFUploadedFile> imageschoosenlist,
) {
  // Step 1: Define the index where you want to add the images (e.g., index 0)
  int index = 0;

  // Step 2: Handle edge case
  if (imagesUploaded == null || imagesUploaded.isEmpty) {
    return -1; // No images uploaded, return -1 or handle accordingly
  }

  // Step 3 & 4: Add all the uploaded images to the existing list at the specified index
  imageschoosenlist.insertAll(index, imagesUploaded);

  // Step 5: Return the index of the last added image
  return index + imagesUploaded.length - 1;
}
