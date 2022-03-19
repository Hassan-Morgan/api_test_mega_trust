import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/launch_model/launch_model.dart';
import 'end_points.dart';


part 'retrofit.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class SpaceXApi {
  factory SpaceXApi(Dio dio, {String baseUrl}) = _SpaceXApi;

  @GET(allLaunchesPath)
  Future<List<LaunchModel>> getLaunches();
}