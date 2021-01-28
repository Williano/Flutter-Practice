import 'package:meta/meta.dart';
import 'package:my_flutter_architecture/utils/helpers/classes/data_abstract_class/data_abstract_class.dart';

class APIClient implements BaseData {
  // static httpClient as ApiClient

  // base url
  String baseURL;

  // APIClient({@required String baseURL}) {
  //   APIClient.BaseURL ??= baseURL;
  // }

  static Future createData() {}

  static Future deleteData() {}

  static Future readData() {}

  static Future readAllData() {}

  static Future updateData() {}
}
