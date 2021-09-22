import 'package:dream11/widgets/styling.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.08,
                        backgroundImage: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 50,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: IconButton(icon:Icon(Icons.camera_alt_outlined,color: Colors.black,size: 15,) , onPressed: () {  },),
                      ),
                    ),
                    Positioned(
                      top: 40,
                        right: 5,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,)),
                    Positioned(
                      top: MediaQuery.of(context).size.width*0.08,
                      left: MediaQuery.of(context).size.width*0.22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ShoebTitans',style: TextStyle(color: Colors.white,fontSize: 16),),
                        SizedBox(height: 10,),
                        Text('Shoeb Khan',style: TextStyle(color: Colors.white),)
                      ],
                    ))

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.05,
                color: Apptheme.drawerUpdateBackground,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                     buildMenuItem(
                      text: 'people',
                     ),
                    buildMenuItem(
                      text: 'people',
                     ),
                    buildMenuItem(
                      text: 'people',
                     ),
                    buildMenuItem(
                      text: 'people',
                     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
  {
  required String text,
}) {
    return ListTile(
      leading: Icon(Icons.ac_unit_outlined,color: Colors.red,),
      title: Text(text),
    );
  }

}
