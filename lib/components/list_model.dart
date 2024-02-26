import '/components/createdpdf_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_widget.dart' show ListWidget;
import 'package:flutter/material.dart';

class ListModel extends FlutterFlowModel<ListWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for createdpdf component.
  late CreatedpdfModel createdpdfModel1;
  // Model for createdpdf component.
  late CreatedpdfModel createdpdfModel2;
  // Model for createdpdf component.
  late CreatedpdfModel createdpdfModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    createdpdfModel1 = createModel(context, () => CreatedpdfModel());
    createdpdfModel2 = createModel(context, () => CreatedpdfModel());
    createdpdfModel3 = createModel(context, () => CreatedpdfModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    createdpdfModel1.dispose();
    createdpdfModel2.dispose();
    createdpdfModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
