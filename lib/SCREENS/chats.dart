import 'package:flutter/material.dart';
import 'package:whatsapp/DATAS/chat_datas.dart';
import 'package:whatsapp/const.dart';

class ChatsSection extends StatefulWidget {
  const ChatsSection({Key? key}) : super(key: key);

  @override
  State<ChatsSection> createState() => _ChatsSectionState();
}

class _ChatsSectionState extends State<ChatsSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(chatData[index].avatar),
                    fit: BoxFit.cover),
              ),
            ),
            title: Text(chatData[index].name),
            subtitle: Text(
              chatData[index].message,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              children: [
                Text(
                  chatData[index].time,
                  style: const TextStyle(
                      color: colorPrimary, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: Center(
                    child: Text(
                      chatData[index].conut,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
