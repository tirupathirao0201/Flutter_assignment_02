import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 93, 95, 95),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(180, 5, 171, 36),
        title: const Text("WhatsApp"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.flight)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          DropdownButton(items:const [
            DropdownMenuItem(value: "account",child:Text("My Account")),
            DropdownMenuItem(value:"privacy",child: Text("privacy")),
            DropdownMenuItem(value:"notifications",child: Text("Notifications")),
            DropdownMenuItem(value:"settings",child: Text("Settings"))
          ], 
          onChanged: (d){})
        ],
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(180, 5, 171, 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: const Icon(Icons.groups_2)),
                Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 5.0, color: Colors.white))),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Chats",
                            style: TextStyle(color: Colors.black)))),
                TextButton(
                    onPressed: () {},
                    child: const Text("Groups",
                        style: TextStyle(color: Colors.black))),
                TextButton(
                    onPressed: () {},
                    child: const Text("Status",
                        style: TextStyle(color: Colors.black))),
                TextButton(
                    onPressed: () {},
                    child: const Text("Calls",
                        style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Image.asset(
                      'images/boy1.jpg',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Image.asset('images/girl.jpeg'
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Image.asset('images/boy.jpg',fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "favourite", icon: Icon(Icons.favorite))
        ],
      ),
    );
  }
}
