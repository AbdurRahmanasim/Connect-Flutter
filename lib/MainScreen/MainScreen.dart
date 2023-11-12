import 'package:connect/Screens/Chatting.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sidebarx/sidebarx.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var screens = const [
    Chatting(),
  ];

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  int activeScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: SidebarX(
        controller: _controller,
        theme: SidebarXTheme(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: canvasColor,
            borderRadius: BorderRadius.circular(20),
          ),
          hoverColor: scaffoldBackgroundColor,
          textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          selectedTextStyle: const TextStyle(color: Colors.white),
          itemTextPadding: const EdgeInsets.only(left: 30),
          selectedItemTextPadding: const EdgeInsets.only(left: 30),
          itemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: canvasColor),
          ),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: actionColor.withOpacity(0.37),
            ),
            gradient: const LinearGradient(
              colors: [accentCanvasColor, canvasColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.28),
                blurRadius: 30,
              )
            ],
          ),
          iconTheme: IconThemeData(
            color: Colors.white.withOpacity(0.7),
            size: 20,
          ),
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 20,
          ),
        ),
        extendedTheme: const SidebarXTheme(
          width: 200,
          decoration: BoxDecoration(
            color: canvasColor,
          ),
        ),
        footerDivider: divider,
        headerBuilder: (context, extended) {
          return SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/connect_gold_nobck.png'),
            ),
          );
        },
        items: [
          SidebarXItem(
            icon: Ionicons.chatbox,
            label: 'Chatting',
            onTap: () {
              activeScreen = 0;
              setState(() {});
            },
          ),
          SidebarXItem(
            icon: Icons.auto_graph,
            label: 'AUTO',
            onTap: () {
              activeScreen = 1;
              setState(() {});
            },
          ),
          SidebarXItem(
              icon: Ionicons.information,
              label: 'About',
              onTap: () {
                activeScreen = 2;
                setState(() {});
              }),
          SidebarXItem(
              icon: Ionicons.wifi_outline,
              label: 'CONNECTION',
              onTap: () {
                activeScreen = 3;
                setState(() {});
              }),
          SidebarXItem(
              icon: Ionicons.add_sharp,
              label: 'GROUPS',
              onTap: () {
                activeScreen = 4;
                setState(() {});
              }),
          SidebarXItem(
              icon: Ionicons.newspaper_outline,
              label: 'SEQUENCE',
              onTap: () {
                activeScreen = 5;
                setState(() {});
              }),
          SidebarXItem(
              icon: Ionicons.return_down_back,
              label: 'HOME OPT',
              onTap: () {
                activeScreen = 6;
                setState(() {});
              }),
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(155, 137, 90, 5),
        title: const Text("CONNECT"),
      ),
      body: screens[activeScreen],
    );
  }
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
