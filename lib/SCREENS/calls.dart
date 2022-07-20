import 'package:flutter/material.dart';
import 'package:whatsapp/DATAS/calls_data.dart';
import 'package:whatsapp/const.dart';

class CallsSection extends StatefulWidget {
  const CallsSection({Key? key}) : super(key: key);

  @override
  State<CallsSection> createState() => _CallsSectionState();
}

class _CallsSectionState extends State<CallsSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(callsData[index].avatar),
          ),
          title: Text(callsData[index].name),
          subtitle: RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(
                    Icons.call_received_sharp,
                    color: Colors.green,
                    size: 15,
                  ),
                ),
                TextSpan(
                    text: callsData[index].time,
                    style: const TextStyle(color: Colors.grey))
              ],
            ),
          ),
          trailing: Icon(
            callsData[index].callType ? Icons.call : Icons.video_call,
            color: colorPrimary,
          ),
        );
      },
    );
  }
}
