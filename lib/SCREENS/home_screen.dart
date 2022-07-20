import 'package:flutter/material.dart';
import 'package:whatsapp/SCREENS/calls.dart';
import 'package:whatsapp/SCREENS/chats.dart';
import 'package:whatsapp/SCREENS/status.dart';
import 'package:whatsapp/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget floattingButton;

    if (_tabController!.index == 0) {
      floattingButton = FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorPrimary,
        child: const Icon(Icons.camera_alt),
      );
    } else if (_tabController!.index == 1) {
      floattingButton = FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorPrimary,
        child: const Icon(Icons.message),
      );
    } else if (_tabController!.index == 2) {
      floattingButton = Container(
        height: 120,
        child: Column(
          children: [
            Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.edit),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: colorPrimary,
              child: const Icon(Icons.camera_alt),
            ),
          ],
        ),
      );
    } else {
      floattingButton = FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorPrimary,
        child: const Icon(Icons.phone_forwarded_sharp),
      );
    }

    double Width = MediaQuery.of(context).size.width;
    double cameraWidth = Width / 24;
    double yourWidth = (Width - cameraWidth) / 5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: const Text("WhatsApp"),
        leadingWidth: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(kababIcon),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(
              horizontal: (Width - (cameraWidth + yourWidth * 3)) / 8),
          isScrollable: true,
          tabs: [
            Container(
              child: const Tab(icon: Icon(Icons.camera_alt)),
              width: cameraWidth,
            ),
            Container(
              child: const Tab(
                text: "CHATS",
              ),
              width: yourWidth,
            ),
            Container(
              child: const Tab(
                text: "STATUS",
              ),
              width: yourWidth,
            ),
            Container(
              child: const Tab(
                text: "CALL",
              ),
              width: yourWidth,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          const ChatsSection(),
          const StatusSection(),
          const CallsSection()
        ],
      ),
      floatingActionButton: floattingButton,
    );
  }
}
