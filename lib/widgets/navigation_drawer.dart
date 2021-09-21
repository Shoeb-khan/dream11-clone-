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
                height: 150,
                color: Colors.black,
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
