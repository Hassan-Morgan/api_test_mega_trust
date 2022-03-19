import 'package:get_it/get_it.dart';
import 'package:mega_trust_api_task/core/network/network_connectivity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/data/repositories/get_all_launches_repository.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/repositories/get_launches.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/presentation/logic/app_cubit/app_cubit.dart';

import 'features/view_launches_feature/domain/use_cases/get_launches_use_case.dart';

var getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt.registerFactory(() => AppCubit(getLaunches: getIt()));
  getIt.registerLazySingleton(() => GetLaunches(getIt()));
  getIt.registerLazySingleton<GetLaunchesDomain>(() => GetLaunchesData(networkInfo: getIt()));
  getIt.registerLazySingleton(() => NetworkInfo());
}
