import 'package:flutter/material.dart';

class CourseProvider extends ChangeNotifier {
  String _imgPath = 'atletik.jpg';
  String _title = 'Atletik';
  String _subtitle = 'Mari belajar atletik dengan cara yang menyenangkan';
  String _materi =
      'Atletik adalah cabang olahraga yang terdiri dari gabungan beberapa jenis olahraga fisik, seperti olahraga lari, lempar, lompat, dan jalan';
  int _id = 1;

  String get imgPath => _imgPath;
  String get title => _title;
  String get subtitle => _subtitle;
  String get materi => _materi;
  int get id => _id;

  set imgPath(String value) {
    _imgPath = value;
    ChangeNotifier();
  }

  set title(String value) {
    _title = value;
    ChangeNotifier();
  }

  set subtitle(String value) {
    _subtitle = value;
    ChangeNotifier();
  }

  set materi(String value) {
    _materi = value;
    ChangeNotifier();
  }

  set id(int value) {
    _id = value;
    ChangeNotifier();
  }
}
