import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mega_trust_api_task/core/error/failures.dart';
import 'package:mega_trust_api_task/core/use_cases/use_case.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/repositories/get_launches.dart';

class GetLaunches implements UseCase {
  final GetLaunchesDomain getLaunches;

  GetLaunches(this.getLaunches);

  @override
  Future<Either<Failure, List<LaunchEntity>>> call(params) {
    return getLaunches.getAllLaunches();
  }

}

class Params extends Equatable {
  @override
  List<Object?> get props => [];
}
