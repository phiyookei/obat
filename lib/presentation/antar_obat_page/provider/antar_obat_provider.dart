import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/antar_obat_model.dart';

/// A provider class for the AntarObatPage.
///
/// This provider manages the state of the AntarObatPage, including the
/// current antarObatModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AntarObatProvider extends ChangeNotifier {
  AntarObatModel antarObatModelObj = AntarObatModel();

  @override
  void dispose() {
    super.dispose();
  }
}
