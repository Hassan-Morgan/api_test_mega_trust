import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_trust_api_task/logic/cubit/app_cubit.dart';
import 'package:mega_trust_api_task/logic/cubit/app_states.dart';
import 'package:mega_trust_api_task/presentation/resources/color_manager.dart';
import 'package:mega_trust_api_task/presentation/resources/strings_manager.dart';
import 'package:mega_trust_api_task/presentation/shared_custom_widgets/launch_sucess_item.dart';

import '../../data/models/launch_model.dart';
import 'one_launch_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
      var cubit = AppCubit.get(context);
      if (state is GetLaunchesSuccessState) {
        return Scaffold(
          appBar: AppBar(
            title: Text(StringsManager.appBarTitle),
          ),
          body: ListView.separated(
            itemBuilder: (BuildContext context, int index) => _listItemBuilder(
                launch: cubit.launches[index], context: context),
            separatorBuilder: (BuildContext context, int index) =>
                _listItemSeparator(),
            itemCount: cubit.launches.length,
          ),
        );
      } else if (state is GetLaunchesLoadingState) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(StringsManager.errorText),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    cubit.getAllLaunches();
                  },
                  child: Text(StringsManager.refreshText),
                ),
              ],
            ),
          ),
        );
      }
    });
  }

  Widget _listItemBuilder(
      {required LaunchModel launch, required BuildContext context}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OneLaunchPage(
                      launch: launch,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  launch.missionName,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  launch.launchDate,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const Spacer(),
            LaunchSuccess(launchSuccess: launch.launchSuccess),
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
