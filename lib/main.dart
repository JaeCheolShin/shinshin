import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarX(
        controller: SidebarXController(selectedIndex: 0, extended: true),
        items: const [
          SidebarXItem(
            icon: Icons.face,
            label: 'head',
          ),
          SidebarXItem(icon: Icons.boy_outlined)
        ],
      ),

      //구글 앱 형식이라는
      appBar: AppBar(
        title: const Text('AVATAR'),
      ), //앱바 상단
      body: const Center(
        child: Text('My BODY'),
      ), //홈화면 가운데
      endDrawer: Drawer(
        //우측마이프로필 메뉴
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/bunny.gif'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                )
              ],
              accountEmail: const Text('ssc981004@gmail.com'),
              accountName: const Text('신승철'),
              onDetailsPressed: () {
                print('상세보기');
              },
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
