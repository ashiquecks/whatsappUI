import 'package:whatsapp/const.dart';

class ChatData {
  final String avatar;
  final String name;
  final String message;
  final String conut;
  final String time;

  ChatData(
      {required this.avatar,
      required this.name,
      required this.message,
      required this.conut,
      required this.time});
}

List<ChatData> chatData = [
  ChatData(
    avatar: bill,
    name: "Bill Gates Microsoft",
    message:
        "Build consumer trust by showing expected wait times and answers to frequently asked questions,",
    conut: "3",
    time: '06:40',
  ),
  ChatData(
    avatar: bezos,
    name: "Jeff Bezos Amazone",
    message:
        "The way we communicate has changed: 75% of consumers now prefer to engage with a brand over private messaging channels versus traditional channels",
    conut: "5",
    time: '05:30',
  ),
  ChatData(
    avatar: lary,
    name: "Larry Page Gooogle",
    message:
        "Contact one of our partners to enable messaging and to optimize your program",
    conut: "2",
    time: '03:45',
  ),
  ChatData(
    avatar: musk,
    name: "Elon Musk",
    message:
        "Right now it’s important for companies to have open, on-demand conversations with their customers, and Business Messages does just that.”",
    conut: "7",
    time: '03:10',
  ),
  ChatData(
    avatar: sgk,
    name: "Santhosh George Kulangara",
    message:
        "Business Messages should be on everyone's digital roadmap for 2021. It’s an easy plug-and-play solution that improves how customers interact with your brand.",
    conut: "4",
    time: '02:40',
  ),
  ChatData(
    avatar: yousufali,
    name: "M A Yousuf Ali",
    message:
        "Business Messages is a powerful way to connect with our customers. We definitely want to expand our use of Business Messages in the future",
    conut: "5",
    time: '02:20',
  ),
  ChatData(
    avatar: sundar,
    name: "Sundar Pichai",
    message:
        "Google’s Business Messages has helped the public sector respond directly to citizens in real time during the COVID-19 pandemic by reducing staff workload and cutting costs for agencies.",
    conut: "3",
    time: '06:40',
  ),
];
