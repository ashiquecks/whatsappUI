import 'package:whatsapp/const.dart';

class CallsData {
  final String avatar;
  final String name;
  final String time;
  final bool callType;

  CallsData({
    required this.avatar,
    required this.name,
    required this.time,
    required this.callType,
  });
}

List<CallsData> callsData = [
  CallsData(
      avatar: sundar,
      name: "Sundar Pichai",
      time: "June 18, 5:41 PM",
      callType: true),
  CallsData(
      avatar: lary,
      name: "Lary Page",
      time: "June 14, 11:46 PM",
      callType: false),
  CallsData(
      avatar: yousufali,
      name: "M A Yousf Ali",
      time: "June 14, 11:46 PM",
      callType: true),
  CallsData(
      avatar: bezos,
      name: "Jeff Bezos",
      time: "June 18, 5:41 PM",
      callType: true),
];
