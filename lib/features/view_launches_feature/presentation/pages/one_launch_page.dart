import 'package:flutter/material.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/rocket_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/presentation/pages/resources/strings_manager.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/presentation/widgets/launch_sucess_item.dart';

class OneLaunchPage extends StatelessWidget {
  const OneLaunchPage({Key? key, required this.launch}) : super(key: key);

  final LaunchEntity launch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.missionName!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(launch.networkLinks!.imageLink!),
              const SizedBox(
                height: 50,
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.missionName,
                itemValue: Text(launch.missionName!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchDate,
                itemValue: Text(launch.launchDate!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.missionNumber,
                itemValue: Text('${launch.flightNumber}'),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchSuccess,
                itemValue: LaunchSuccess(launchSuccess: launch.launchSuccess),
              ),
              _rocket(launch.launchRocket!, context),
              const SizedBox(
                height: 20,
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.launchSiteId,
                itemValue: Text(launch.launchSite!.siteName!),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rocket(RocketEntity rocket, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsManager.rockets,
          style: Theme.of(context).textTheme.headline1,
        ),
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
                itemValue: Text(rocket.rocketId!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.rocketName,
                itemValue: Text(rocket.rocketName!),
              ),
              _itemBuilder(
                context: context,
                name: StringsManager.rocketType,
                itemValue: Text(rocket.rocketType!),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemBuilder(
      {required String name,
      required Widget itemValue,
      required BuildContext context}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline1,
            ),
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
