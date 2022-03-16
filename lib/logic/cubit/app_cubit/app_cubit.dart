import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/logic/reposatory/get_data_from_api.dart';

import 'app_cubit_states_freezed/app_cubit_freezed_states.dart';

class AppCubit extends Cubit<AppCubitStates> {
  AppCubit() : super(const AppCubitStates.initial());

  static AppCubit get(context) => BlocProvider.of(context);

  void getAllLaunches() {
    emit(const AppCubitStates.loading());
    GetDataFromApi.getDataFromApi().then((value) {
      emit(AppCubitStates.success(value!));
    }).catchError((e) {
      emit(AppCubitStates.error(e.toString()));
    });
  }
}
