import 'package:flutter/material.dart';
import 'package:learning/page/chat.dart';
import 'package:learning/page/dashboard.dart';
import 'package:learning/page/profile.dart';
import 'package:learning/page/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: (){},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //left
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.only(left: 30),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Dashboard();
                          currentTab = 0;
                        });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 0 ? Colors.black : Colors.black,

                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(left: 50),
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 1 ? Colors.black : Colors.black,

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 50.0,
                width: 50.0,
                child: FittedBox(
                  child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 1;
                        });
                      },
                      child: Icon(Icons.add),
                  ),
                ),
              ),
              //right
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    hoverElevation: 0,
                    padding: EdgeInsets.only(right: 50),
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book_outlined,
                          color: currentTab == 2 ? Colors.black : Colors.black,

                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(right: 30),
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 3 ? Colors.black : Colors.black,

                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
