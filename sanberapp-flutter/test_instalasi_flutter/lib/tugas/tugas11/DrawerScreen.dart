import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("M.Fadhli Azhari !COBA!"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/Fadhli.jpg")
              ),
              accountEmail: Text("fadli.azhari.elka@gmail.com"),
            ),
          DrawerListTile(
            iconData: Icons.group,
            title: "NewGroup !COBA!",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group !COBA!",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat !COBA!",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "contacts !COBA!",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message !COBA!",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls !COBA!",
            onTilePressed: (){},
          ),
        ],
      ),

    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
  :super(key:key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }
}