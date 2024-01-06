import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString _categoryvalue = ''.obs;

  String get category => _categoryvalue.value;

  set updateCategoryValue(String value) {
    _categoryvalue.value = value;
  }

  RxString _titlevalue = ''.obs;

  String get title => _titlevalue.value;

  set updateTitleValue(String value) {
    _titlevalue.value = value;
  }
}
