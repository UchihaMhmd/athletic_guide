import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _selectedValue = '100m'.obs;
  final _dropdownItems = <String>[].obs;
  List<String> items = <String>['100m', '200m', '400m'];
  String get selectedValue => _selectedValue.value;
  List<String> get dropdownItems => _dropdownItems.toList();

  void setSelectedValue(String value) {
    _selectedValue.value = value;
  }

  void setDropdownItems(items) {
    _dropdownItems.value = items;
    if (items.isNotEmpty) {
      setSelectedValue(items.first);
    }
  }

  void fnx(String s) {
    setSelectedValue(s);
  }
}
