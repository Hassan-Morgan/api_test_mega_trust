import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mega_trust_api_task/core/error/failures.dart';
import 'package:mega_trust_api_task/core/network/network_connectivity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/data/models/launch_model/launch_model.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/repositories/get_launches.dart';

import '../data_sources/get_all_launches_remote/retrofit.dart';
import '../mapper/all_launches_mapper.dart';

class GetLaunchesData implements GetLaunchesDomain {
  final NetworkInfo networkInfo;
  List<LaunchEntity> launchEntities = [];

  GetLaunchesData({required this.networkInfo});

  @override
  Future<Either<Failure, List<LaunchEntity>>> getAllLaunches() async {
    bool networkConnection = await networkInfo.isConnected();
    if (networkConnection) {
      Dio dio = Dio();
      List<LaunchModel>? modelList = await SpaceXApi(dio).getLaunches();
      for (LaunchModel element in modelList) {
        launchEntities.add(element.toEntity(element));
      }
      return right(launchEntities);
    } else {
      return Left(NetworkFailure());
    }
  }
}
