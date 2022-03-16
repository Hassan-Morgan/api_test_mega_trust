import 'package:dio/dio.dart';
import 'package:mega_trust_api_task/data/models/launch_model/launch_model.dart';
import 'package:mega_trust_api_task/data/retrofit/end_points.dart';
import 'package:retrofit/http.dart';


part 'retrofit.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class SpaceXApi {
  factory SpaceXApi(Dio dio, {String baseUrl}) = _SpaceXApi;


  @GET(allLaunchesPath)
  Future<List<LaunchModel>> getTasks();
}
