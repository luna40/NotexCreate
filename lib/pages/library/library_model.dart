import '/components/list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'library_widget.dart' show LibraryWidget;
import 'package:flutter/material.dart';

class LibraryModel extends FlutterFlowModel<LibraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for list component.
  late ListModel listModel1;
  // Model for list component.
  late ListModel listModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listModel1 = createModel(context, () => ListModel());
    listModel2 = createModel(context, () => ListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listModel1.dispose();
    listModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
