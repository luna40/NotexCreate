import '/flutter_flow/flutter_flow_util.dart';
import 'pdf_name_card_copy_widget.dart' show PdfNameCardCopyWidget;
import 'package:flutter/material.dart';

class PdfNameCardCopyModel extends FlutterFlowModel<PdfNameCardCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for addpdf widget.
  FocusNode? addpdfFocusNode;
  TextEditingController? addpdfController;
  String? Function(BuildContext, String?)? addpdfControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addpdfFocusNode?.dispose();
    addpdfController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
