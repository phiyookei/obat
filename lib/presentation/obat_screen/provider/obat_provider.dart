import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/obat_model.dart';

/// A provider class for the ObatScreen.
///
/// This provider manages the state of the ObatScreen, including the
/// current obatModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ObatProvider extends ChangeNotifier {
  ObatModel obatModelObj = ObatModel();

  @override
  void dispose() {
    super.dispose();
  }
}
