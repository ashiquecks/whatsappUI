import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/DATAS/status_data.dart';
import 'package:whatsapp/WIDGETS/status_profile_circle.dart';

class StatusSection extends StatefulWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  State<StatusSection> createState() => _StatusSectionState();
}

class _StatusSectionState extends State<StatusSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: statusProfileCircle(),
          title: const Text("My Status"),
          subtitle: const Text("Tap to add status update"),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
          child: Text(
            "Recent updates",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: statusData.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: DottedBorder(
                borderType: BorderType.Circle,
                color: Colors.green,
                strokeWidth: 3,
                dashPattern: [50, 3],
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(statusData[index].avatar),
                ),
              ),
              title: Text(statusData[index].name),
              subtitle: Text(statusData[index].time),
            );
          },
        ),
      ],
    );
  }
}
