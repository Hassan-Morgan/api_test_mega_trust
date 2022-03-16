import 'package:dio/dio.dart';
import 'package:mega_trust_api_task/data/models/launch_model/launch_model.dart';

import '../../data/retrofit/retrofit.dart';

class GetDataFromApi {

  static Future<List<LaunchModel>?> getDataFromApi() async {
    final dio = Dio();
    final client = SpaceXApi(dio);
   return await client.getTasks();
  }
}