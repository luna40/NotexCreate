import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isSaved = prefs.getBool('ff_isSaved') ?? _isSaved;
    });
    _safeInit(() {
      _pdfImageGenerated =
          prefs.getString('ff_pdfImageGenerated') ?? _pdfImageGenerated;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  bool _isSaved = false;
  bool get isSaved => _isSaved;
  set isSaved(bool value) {
    _isSaved = value;
    prefs.setBool('ff_isSaved', value);
  }

  String _UnitNameAppState = '';
  String get UnitNameAppState => _UnitNameAppState;
  set UnitNameAppState(String value) {
    _UnitNameAppState = value;
  }

  String _pdfTypeAppState = '';
  String get pdfTypeAppState => _pdfTypeAppState;
  set pdfTypeAppState(String value) {
    _pdfTypeAppState = value;
  }

  List<String> _imageslistAppstate = [];
  List<String> get imageslistAppstate => _imageslistAppstate;
  set imageslistAppstate(List<String> value) {
    _imageslistAppstate = value;
  }

  void addToImageslistAppstate(String value) {
    _imageslistAppstate.add(value);
  }

  void removeFromImageslistAppstate(String value) {
    _imageslistAppstate.remove(value);
  }

  void removeAtIndexFromImageslistAppstate(int index) {
    _imageslistAppstate.removeAt(index);
  }

  void updateImageslistAppstateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _imageslistAppstate[index] = updateFn(_imageslistAppstate[index]);
  }

  void insertAtIndexInImageslistAppstate(int index, String value) {
    _imageslistAppstate.insert(index, value);
  }

  String _pdfCreatedAppstate = '';
  String get pdfCreatedAppstate => _pdfCreatedAppstate;
  set pdfCreatedAppstate(String value) {
    _pdfCreatedAppstate = value;
  }

  String _pdfImageGenerated = '';
  String get pdfImageGenerated => _pdfImageGenerated;
  set pdfImageGenerated(String value) {
    _pdfImageGenerated = value;
    prefs.setString('ff_pdfImageGenerated', value);
  }

  List<String> _chapterAppState = [];
  List<String> get chapterAppState => _chapterAppState;
  set chapterAppState(List<String> value) {
    _chapterAppState = value;
  }

  void addToChapterAppState(String value) {
    _chapterAppState.add(value);
  }

  void removeFromChapterAppState(String value) {
    _chapterAppState.remove(value);
  }

  void removeAtIndexFromChapterAppState(int index) {
    _chapterAppState.removeAt(index);
  }

  void updateChapterAppStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chapterAppState[index] = updateFn(_chapterAppState[index]);
  }

  void insertAtIndexInChapterAppState(int index, String value) {
    _chapterAppState.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
