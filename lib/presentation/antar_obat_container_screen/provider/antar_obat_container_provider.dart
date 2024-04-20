import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/antar_obat_container_model.dart';

/// A provider class for the AntarObatContainerScreen.
///
/// This provider manages the state of the AntarObatContainerScreen, including the
/// current antarObatContainerModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AntarObatContainerProvider extends ChangeNotifier {
  AntarObatContainerModel antarObatContainerModelObj =
      AntarObatContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
