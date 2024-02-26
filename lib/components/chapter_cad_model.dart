import '/flutter_flow/flutter_flow_util.dart';
import 'chapter_cad_widget.dart' show ChapterCadWidget;
import 'package:flutter/material.dart';

class ChapterCadModel extends FlutterFlowModel<ChapterCadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for addchapter widget.
  FocusNode? addchapterFocusNode;
  TextEditingController? addchapterController;
  String? Function(BuildContext, String?)? addchapterControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addchapterFocusNode?.dispose();
    addchapterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
