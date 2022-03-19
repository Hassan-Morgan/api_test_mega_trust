import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';

import '../../../../data/models/launch_model/launch_model.dart';

part 'app_cubit_freezed_states.freezed.dart';

@Freezed()
class AppCubitStates with _$AppCubitStates {
  const factory AppCubitStates.initial() = _initial;

  const factory AppCubitStates.loading() = _loading;

  const factory AppCubitStates.error(String error) = _error;

  const factory AppCubitStates.success(List<LaunchEntity> launches) = _success;
}
