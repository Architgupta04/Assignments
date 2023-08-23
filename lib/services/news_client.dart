import 'package:dio/dio.dart';

class NewsClient {
  final Dio _dio = Dio();

  getNewsDataFromAPI() async {
    String newsURL =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=36d6bcaa97b94bc19aed1a91c4e09f31";
    try {
      var response = await _dio.get(newsURL);

      print("this is the news data from the API ${response.data}");
      return response.data;
    } catch (error) {
      print("Error in fetching data from API");
    }
  }
}