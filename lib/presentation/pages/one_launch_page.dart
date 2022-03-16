import 'package:flutter/material.dart';
import 'package:mega_trust_api_task/data/models/launch_model/launch_model.dart';
import 'package:mega_trust_api_task/data/models/rocket_model/rocket_model.dart';
import 'package:mega_trust_api_task/logic/get_it/launch_model_get.dart';
import 'package:mega_trust_api_task/presentation/resources/strings_manager.dart';
import 'package:mega_trust_api_task/presentation/shared_custom_widgets/launch_sucess_item.dart';

class OneLaunchPage extends StatelessWidget {

  const OneLaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LaunchModel launch = locator.get();
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.mission_name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _itemBuilder(
              name: StringsManager.missionName,
              itemValue: Text(launch.mission_name!),
            ),
            _itemBuilder(
              name: StringsManager.launchDate,
              itemValue: Text(launch.launch_date_utc!),
            ),
            _itemBuilder(
              name: StringsManager.missionNumber,
              itemValue: Text('${launch.flight_number}'),
            ),
            _itemBuilder(
              name: StringsManager.launchSuccess,
              itemValue: LaunchSuccess(launchSuccess: launch.launch_success),
            ),
            _rocket(launch.rocket!),
            const SizedBox(
              height: 20,
            ),
            _itemBuilder(
              name: StringsManager.launchSiteId,
              itemValue: Text(launch.launch_site!.site_name!),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rocket(RocketModel rocket) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringsManager.rockets),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            children: [
              _itemBuilder(
                name: StringsManager.rocketId,
                itemValue: Text(rocket.rocket_id!),
              ),
              _itemBuilder(
                name: StringsManager.rocketName,
                itemValue: Text(rocket.rocket_name!),
              ),
              _itemBuilder(
                name: StringsManager.rocketType,
                itemValue: Text(rocket.rocket_type!),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemBuilder({required String name, required Widget itemValue}) {
    return Column(
      children: [
        Row(
          children: [
            Text(name),
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
