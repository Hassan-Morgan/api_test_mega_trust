import 'package:dio/dio.dart';
import 'package:mega_trust_api_task/data/services/dio/dio_end_points.dart';

import '../../data/services/dio/dio_helper.dart';

class GetDataFromApi{
  static Future<List<Map<String,dynamic>>> getDataFromApi()async{
    List<Map<String,dynamic>> launches = [];
    Response response = await DioHelper.getData(path: allLaunchesPath);
    launches =[];
    for(Map<String,dynamic>element in response.data){
      launches.add(element);
    }
    return launches;
  }
}