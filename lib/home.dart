import 'package:dsc_task_3/screens/chat_page.dart';
import 'package:dsc_task_3/screens/my_network_page.dart';
import 'package:dsc_task_3/screens/notifactions_page.dart';
import 'package:dsc_task_3/screens/profile_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTap = 0;
  final List<Widget> screens = [
   ChatPage(),
    MyNetworkPage(),
    NotificationPage(),
    ProfilePage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ChatPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: PageStorage(
     child: currentScreen,
     bucket: bucket,

   ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=ChatPage();
                            currentTap = 0;
                          },);
                        },
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(
                                Icons.chat,
                                color: currentTap == 0 ?Colors.blueGrey[500]:Colors.grey,
                              ),
                          Text(
                            "Chat",
                            style: TextStyle(
                              color: currentTap == 0 ?Colors.blueGrey[500] :Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=MyNetworkPage();
                            currentTap = 1;
                          },);
                        },
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(
                                Icons.people_alt,
                                color: currentTap == 1 ?Colors.blueGrey[500]:Colors.grey,
                              ),
                          Text(
                            "My Network",
                            style: TextStyle(
                              color: currentTap == 1 ?Colors.blueGrey[500] :Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=NotificationPage();
                          currentTap = 2;
                        },);
                      },
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            color: currentTap == 2 ?Colors.blueGrey[500]:Colors.grey,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: currentTap == 2 ?Colors.blueGrey[500] :Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=ProfilePage();
                          currentTap = 3;
                        },);
                      },
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: currentTap == 3 ?Colors.blueGrey[500]:Colors.grey,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: currentTap == 3 ?Colors.blueGrey[500] :Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
