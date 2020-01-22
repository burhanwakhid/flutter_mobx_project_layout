
import 'package:flutter_mobxx/core/model/kategori_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiService {
  Future<List<KategoriModel>> getKategori() async {
    try{
      // var url = 'https://api.myjson.com/bins/6mioo';
      // var url = 'https://api.myjson.com/bins/nc2mk';
      // var url = 'https://api.myjson.com/bins/zx74k';
      var url = 'http://52.163.204.132:8080/kategori';
      
      var response = await http.get(url);
      if(response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        var result = data.map((json) => KategoriModel.fromJson(json)).toList();
        return result;
      } else {
        throw Exception('Something error');
      }
    }catch(e){
      throw Exception(e);
    }
  }
}