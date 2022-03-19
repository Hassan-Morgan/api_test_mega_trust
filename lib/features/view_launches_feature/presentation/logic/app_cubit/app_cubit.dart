import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';
import '../../../../../core/error/failures.dart';
import '../../../domain/use_cases/get_launches_use_case.dart';
import 'app_cubit_states_freezed/app_cubit_freezed_states.dart';

class AppCubit extends Cubit<AppCubitStates> {
  AppCubit({required this.getLaunches}) : super(const AppCubitStates.initial());
  late GetLaunches getLaunches;

  void getAllLaunches() async {
    emit(const AppCubitStates.loading());
    Either<Failure, List<LaunchEntity>> failureOrGetLaunches =
        await getLaunches(Params());
    failureOrGetLaunches.fold((Failure failure) {
      emit(const AppCubitStates.error('error happened'));
    }, (List<LaunchEntity> launches) {
      emit(AppCubitStates.success(launches));
    });
  }
}
