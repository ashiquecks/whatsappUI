import 'package:whatsapp/const.dart';

class StatusData {
  final String avatar;
  final String name;
  final String time;

  StatusData({required this.avatar, required this.name, required this.time});
}

List<StatusData> statusData = [
  StatusData(avatar: musk, name: "Elon Musk", time: "15 minutes ago"),
  StatusData(avatar: lary, name: "Lary Page Google", time: "Today, 12:46 PM"),
  StatusData(
      avatar: bezos, name: "Jeff Bezos Amazone", time: "Today, 11:46 PM"),
  StatusData(
      avatar: sgk,
      name: "Santhosh George Kulangara",
      time: "Yesterday, 10:15 PM"),
  StatusData(
      avatar: sundar, name: "Sundar Pichai", time: "Yesterday, 09:35 PM"),
];
