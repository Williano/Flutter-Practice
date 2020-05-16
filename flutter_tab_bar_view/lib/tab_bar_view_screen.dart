import "package:flutter/material.dart";

class TabBarViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFF2d3447),
          appBar: AppBar(
            title: Text("Tab View Example"),
            bottom: TabBar(indicatorColor: Color(0xFF2d3447), tabs: <Widget>[
              Tab(text: "Chats", icon: Icon(Icons.chat)),
              Tab(text: "Groups", icon: Icon(Icons.group)),
              Tab(text: "Settings", icon: Icon(Icons.settings))
            ]),
          ),
          body: TabBarView(physics: BouncingScrollPhysics(), children: <Widget>[
            Container(
              key: PageStorageKey("Page 1"),
              color: Color(0xFF2d3447),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      key: PageStorageKey(index),
                      leading: Icon(Icons.ac_unit),
                      title: Text("Test"),
                      children: <Widget>[
                        ListTile(
                          title: Text("Test"),
                          subtitle: Text("Me"),
                          leading: Icon(Icons.access_alarm),
                          isThreeLine: true,
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          title: Text("Test"),
                          subtitle: Text("Me"),
                          leading: Icon(Icons.access_alarm),
                          isThreeLine: true,
                          trailing: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    );
                  }),
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.pink,
            )
          ]),
        ));
  }
}
