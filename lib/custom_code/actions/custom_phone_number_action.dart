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

Future<String> customPhoneNumberAction(String? textfieldphone) async {
  if (textfieldphone == null) {
    return ""; // Return empty string if input is null
  } else if (textfieldphone.startsWith("0")) {
    // Replace the leading "0" with "+254"
    return "+254" + textfieldphone.substring(1);
  } else {
    return textfieldphone; // Return the input phone number as is
  }
}
