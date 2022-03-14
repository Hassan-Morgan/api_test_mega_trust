import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/data/models/launch_model.dart';
import 'package:mega_trust_api_task/data/services/dio/dio_end_points.dart';
import 'package:mega_trust_api_task/data/services/dio/dio_helper.dart';
import 'package:mega_trust_api_task/logic/cubit/app_states.dart';
import 'package:mega_trust_api_task/logic/reposatory/get_data_from_api.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<LaunchModel> launches = [];

  void getAllLaunches() {
    emit(GetLaunchesLoadingState());
    GetDataFromApi.getDataFromApi().then((value) {
      launches = [];
      for (Map<String, dynamic> element in value) {
        launches.add(LaunchModel.fromJson(element));
      }
      emit(GetLaunchesSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(GetLaunchesErrorState());
    });
  }
}
