
import 'package:flutter/material.dart';
import 'package:mega_trust_api_task/data/models/launch_model/launch_model.dart';
import 'package:mega_trust_api_task/data/models/rocket_model/rocket_model.dart';
import 'package:mega_trust_api_task/presentation/resources/strings_manager.dart';
import 'package:mega_trust_api_task/presentation/shared_custom_widgets/launch_sucess_item.dart';

import '../../logic/dependences/launch_model_get.dart';

class OneLaunchPage extends StatelessWidget {
  const OneLaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LaunchModel launch = launchModelGetIt.get();
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.mission_name!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(launch.links!.mission_patch_small!),
              const SizedBox(
                height: 50,
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.missionName,
                itemValue: Text(launch.mission_name!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchDate,
                itemValue: Text(launch.launch_date_utc!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.missionNumber,
                itemValue: Text('${launch.flight_number}'),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchSuccess,
                itemValue: LaunchSuccess(launchSuccess: launch.launch_success),
              ),
              _rocket(launch.rocket!,context),
              const SizedBox(
                height: 20,
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchSiteId,
                itemValue: Text(launch.launch_site!.site_name!),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rocket(RocketModel rocket,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringsManager.rockets,style: Theme.of(context).textTheme.headline1,),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            children: [
              _itemBuilder(
                context: context,
                name: StringsManager.rocketId,
                itemValue: Text(rocket.rocket_id!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.rocketName,
                itemValue: Text(rocket.rocket_name!),
              ),
              _itemBuilder(
                context:context,
                name: StringsManager.rocketType,
                itemValue: Text(rocket.rocket_type!),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemBuilder({required String name, required Widget itemValue,required BuildContext context}) {
    return Column(
      children: [
        Row(
          children: [
            Text(name,style: Theme.of(context).textTheme.headline1,),
            const Spacer(),
            itemValue,
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
