import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/logic/cubit/app_cubit/freezed_states/app_cubit_freezed_states.dart';
import 'package:mega_trust_api_task/logic/reposatory/get_data_from_api.dart';

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
