import 'dart:convert';

import 'package:dio/dio.dart';

class SongClient{

final Dio _dioClient = Dio();


  getSongsFromITunes(String searchQuery) async{
    try{
      String iTunesURL = "https://itunes.apple.com/search?term=jack+johnson&limit=25";
      
      var res = await _dioClient.get(iTunesURL);
      Map<String,dynamic> songsmap = jsonDecode(res.data);
      print("this is the resp $res");
      print("this is the map resp ${songsmap}");
      return songsmap;
    }

    catch(error){
      print("Some error has ben occured $error");
    }

  }
}