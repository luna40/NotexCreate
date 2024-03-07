import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'generate_pdf_widget.dart' show GeneratePdfWidget;
import 'package:flutter/material.dart';

class GeneratePdfModel extends FlutterFlowModel<GeneratePdfWidget> {
  ///  Local state fields for this component.

  String? pdfGenerated;

  List<String> chapterName = [];
  void addToChapterName(String item) => chapterName.add(item);
  void removeFromChapterName(String item) => chapterName.remove(item);
  void removeAtIndexFromChapterName(int index) => chapterName.removeAt(index);
  void insertAtIndexInChapterName(int index, String item) =>
      chapterName.insert(index, item);
  void updateChapterNameAtIndex(int index, Function(String) updateFn) =>
      chapterName[index] = updateFn(chapterName[index]);

  List<FFUploadedFile> imageschosen = [];
  void addToImageschosen(FFUploadedFile item) => imageschosen.add(item);
  void removeFromImageschosen(FFUploadedFile item) => imageschosen.remove(item);
  void removeAtIndexFromImageschosen(int index) => imageschosen.removeAt(index);
  void insertAtIndexInImageschosen(int index, FFUploadedFile item) =>
      imageschosen.insert(index, item);
  void updateImageschosenAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      imageschosen[index] = updateFn(imageschosen[index]);

  int? listindex;

  bool buttonComponentState = true;

  List<AddChapterAndImagesStruct> chapterindexlist = [];
  void addToChapterindexlist(AddChapterAndImagesStruct item) =>
      chapterindexlist.add(item);
  void removeFromChapterindexlist(AddChapterAndImagesStruct item) =>
      chapterindexlist.remove(item);
  void removeAtIndexFromChapterindexlist(int index) =>
      chapterindexlist.removeAt(index);
  void insertAtIndexInChapterindexlist(
          int index, AddChapterAndImagesStruct item) =>
      chapterindexlist.insert(index, item);
  void updateChapterindexlistAtIndex(
          int index, Function(AddChapterAndImagesStruct) updateFn) =>
      chapterindexlist[index] = updateFn(chapterindexlist[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
