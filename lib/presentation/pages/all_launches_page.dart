import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/logic/cubit/app_cubit/app_cubit.dart';
import 'package:mega_trust_api_task/presentation/resources/color_manager.dart';
import 'package:mega_trust_api_task/presentation/resources/strings_manager.dart';
import 'package:mega_trust_api_task/presentation/shared_custom_widgets/launch_sucess_item.dart';

import '../../data/models/launch_model/launch_model.dart';
import '../../logic/cubit/app_cubit/app_cubit_states_freezed/app_cubit_freezed_states.dart';
import '../../logic/dependences/launch_model_get.dart';
import 'one_launch_page.dart';

class AllLaunchesScreen extends StatelessWidget {
  const AllLaunchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppCubitStates>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        error: (e) => Scaffold(
          body: Center(
            child: Text(StringsManager.errorText),
          ),
        ),
        loading: () => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        success: (launches) => Scaffold(
          appBar: AppBar(
            title: Text(StringsManager.appBarTitle),
          ),
          body: ListView.separated(
            itemBuilder: (BuildContext context, int index) =>
                _listItemBuilder(launch: launches[index], context: context),
            separatorBuilder: (BuildContext context, int index) =>
                _listItemSeparator(),
            itemCount: launches.length,
          ),
        ),
      ),
    );
  }

  Widget _listItemBuilder(
      {required LaunchModel launch, required BuildContext context}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              launchModelGetIt.reset();
              launchModelGetIt.registerLazySingleton(() => launch);
              return const OneLaunchPage();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            Image.network(
              launch.links!.mission_patch_small!,
              height: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  launch.mission_name!,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  launch.launch_date_utc!,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const Spacer(),
            LaunchSuccess(launchSuccess: launch.launch_success),
          ],
        ),
      ),
    );
  }

  Widget _listItemSeparator() {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 1.5,
      width: double.infinity,
      color: ColorManager.greyColor,
    );
  }
}
