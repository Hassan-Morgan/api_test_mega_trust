import 'package:dartz/dartz.dart';
import 'package:mega_trust_api_task/core/error/failures.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';

abstract class GetLaunchesDomain{
  Future<Either<Failure,List<LaunchEntity>>> getAllLaunches();
}
