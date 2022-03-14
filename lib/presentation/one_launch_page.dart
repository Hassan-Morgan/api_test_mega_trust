import 'package:flutter/material.dart';
import 'package:mega_trust_api_task/data/models/launch_model.dart';
import 'package:mega_trust_api_task/data/models/launch_site_model.dart';
import 'package:mega_trust_api_task/data/models/rocket_model.dart';
import 'package:mega_trust_api_task/presentation/resources/strings_manager.dart';
import 'package:mega_trust_api_task/presentation/shared_custom_widgets/launch_sucess_item.dart';

class OneLaunchPage extends StatelessWidget {
  final LaunchModel launch;

  const OneLaunchPage({Key? key, required this.launch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.missionName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _itemBuilder(
              name: StringsManager.missionName,
              itemValue: Text(launch.missionName),
            ),
            _itemBuilder(
              name: StringsManager.launchDate,
              itemValue: Text(launch.launchDate),
            ),
            _itemBuilder(
              name: StringsManager.missionNumber,
              itemValue: Text('${launch.flightNumber}'),
            ),
            _itemBuilder(
              name: StringsManager.launchSuccess,
              itemValue: LaunchSuccess(launchSuccess: launch.launchSuccess),
            ),
            _rocket(launch.rocketModel),
            const SizedBox(
              height: 20,
            ),
            _itemBuilder(
              name: StringsManager.launchSiteId,
              itemValue: Text(launch.launchSite.siteName),
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
                itemValue: Text(rocket.rocketId),
              ),
              _itemBuilder(
                name: StringsManager.rocketId,
                itemValue: Text(rocket.rocketName),
              ),
              _itemBuilder(
                name: StringsManager.rocketId,
                itemValue: Text(rocket.rocketType),
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
