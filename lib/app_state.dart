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
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
    _safeInit(() {
      _isSaved = prefs.getBool('ff_isSaved') ?? _isSaved;
    });
    _safeInit(() {
      _pdfImageGenerated =
          prefs.getString('ff_pdfImageGenerated') ?? _pdfImageGenerated;
    });
    _safeInit(() {
      _university = prefs.getString('ff_university') ?? _university;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
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
    prefs.setString('ff_userName', value);
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

  String _PdfName = '';
  String get PdfName => _PdfName;
  set PdfName(String value) {
    _PdfName = value;
  }

  String _PhoneNumber = '';
  String get PhoneNumber => _PhoneNumber;
  set PhoneNumber(String value) {
    _PhoneNumber = value;
  }

  String _course = '';
  String get course => _course;
  set course(String value) {
    _course = value;
  }

  String _registrationnumberApp = '';
  String get registrationnumberApp => _registrationnumberApp;
  set registrationnumberApp(String value) {
    _registrationnumberApp = value;
  }

  String _university = 'Chuka University';
  String get university => _university;
  set university(String value) {
    _university = value;
    prefs.setString('ff_university', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _userprofilepic = '';
  String get userprofilepic => _userprofilepic;
  set userprofilepic(String value) {
    _userprofilepic = value;
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
