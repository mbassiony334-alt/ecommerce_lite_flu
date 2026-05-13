import 'package:dio/dio.dart';
import 'package:emcommercelite/feature/home/data/model/productModel.dart';

class ProductRepo {
  static final dio = Dio();
  static Future<List<productModel>> getAllProduct() async {
    var response = await dio.get("https://dummyjson.com/products");
    List jsonbody = response.data["products"];

    List<productModel> list = jsonbody
        .map((e) => productModel.fromJson(e))
        .toList();
    return list;
  }

  static Future<List<productModel>> filterBycategory(category) async {
    var response = await dio.get("https://dummyjson.com/products/category/$category");
    List jsonbody = response.data["products"];

    List<productModel> list = jsonbody
        .map((e) => productModel.fromJson(e))
        .toList();
    return list;
  }
}
