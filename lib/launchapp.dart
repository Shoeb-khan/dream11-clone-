import 'package:dream11/screens/home/home.dart';
import 'package:dream11/screens/my_matches/my_matches.dart';
import 'package:dream11/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class LaunchApp extends StatefulWidget {
  const LaunchApp({Key? key}) : super(key: key);

  @override
  _LaunchAppState createState() => _LaunchAppState();
}

class _LaunchAppState extends State<LaunchApp> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: MediaQuery.of(context).size.width*0.90,
            child: NavigationDrawer()),
        appBar: AppBar(
          leading: InkWell(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Image.asset('assets/images/dream_logo.png'),
                  ),
                  Positioned(top: 4,left: 21,
                      child: SizedBox(
                        width: 20,
                        height: 50,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                            child: Icon(Icons.horizontal_split_outlined,color: Colors.white,size: 10,)),
                      ))
                ],
              ),
            ),
            onTap: () =>_scaffoldKey.currentState!.openDrawer(),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dream_logo.png',width: 100,height: 100,)
            ],
          ),
          actions: [
            Icon(Icons.notifications_outlined,color: Colors.black,size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.account_balance_wallet_outlined,color: Colors.black,size: 30,),
            SizedBox(width: 5,)
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.only(left: 15,right: 5,top: 10),
            labelPadding: EdgeInsets.only(left: 10),
            tabs: [
              Column(
                children: [
                  Icon(Icons.sports_baseball_outlined,color: Colors.grey),SizedBox(height: 5,),
                  Text("Cricket",style: TextStyle(color: Colors.grey,fontSize: 12))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_basketball,color: Colors.grey,),SizedBox(height: 5,),
                  Text("FootBall",style: TextStyle(color: Colors.grey,fontSize: 12))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_baseball_outlined,color: Colors.grey),SizedBox(height: 5,),
                  Text("Cricket",style: TextStyle(color: Colors.grey,fontSize: 12))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_baseball_outlined,color: Colors.grey),SizedBox(height: 5,),
                  Text("Cricket",style: TextStyle(color: Colors.grey,fontSize: 12))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_baseball_outlined,color: Colors.grey),SizedBox(height: 5,),
                  Text("Cricket",style: TextStyle(color: Colors.grey,fontSize: 12),)
                ],
              ),
            ],
            indicatorColor: Colors.red[900],
          ),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/mi.png')
                    )
                  ),
                ),
                Flexible(flex: 3,
                  child: Container(
                    child: TabBarView(children: [
                      Home(),
                      My_Matches(),
                      My_Matches(),
                      My_Matches(),
                      My_Matches(),

                    ],

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),title:Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),title:Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),title: Text('Home')),
        ],

        ),
      ),
    );
  }
}
