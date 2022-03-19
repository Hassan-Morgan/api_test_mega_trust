import 'package:equatable/equatable.dart';

class RocketEntity extends Equatable {
  final String? rocketId;
  final String? rocketName;
  final String? rocketType;

  const RocketEntity({
    this.rocketId,
    this.rocketName,
    this.rocketType,
  });

  @override
  List<Object?> get props => [rocketType, rocketName, rocketId];
}
