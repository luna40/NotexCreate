import '/components/downloads_widget.dart';
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
  late ListModel listModel;
  // Model for Downloads component.
  late DownloadsModel downloadsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listModel = createModel(context, () => ListModel());
    downloadsModel = createModel(context, () => DownloadsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listModel.dispose();
    downloadsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
