class RocketModel{
  late String rocketId;
  late String rocketName;
  late String rocketType;

  RocketModel.fromJson(Map<String,dynamic>json){
    rocketId = json['rocket_id'];
    rocketName = json['rocket_name'];
    rocketType = json['rocket_type'];
  }
}