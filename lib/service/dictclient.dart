import 'package:dio/dio.dart';

class DictClient {
  Dio dict = Dio();

  searchforward({required String query}) async {
    String dictURL = "https://api.dictionaryapi.dev/api/v2/entries/en/$query";
    try {
      var response = await dict.get(dictURL);
      //print("This is the response: ${response.data[0]['meanings'][0]['definitions'][0]['definition']}");
      return response.data[0]['meanings'][0]['definitions'][0]['definition'];
    } catch (error) {
      print("Error: $error");
    }
  }
}