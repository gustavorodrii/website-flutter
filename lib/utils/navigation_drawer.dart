import 'package:ecommerceprovider/homepage.dart';
import 'package:ecommerceprovider/pages/pagina_1.dart';
import 'package:ecommerceprovider/pages/pagina_2.dart';
import 'package:flutter/material.dart';

class NavigationMenuDrawer extends StatelessWidget {
  const NavigationMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItens(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Colors.grey.shade300,
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.grey.shade300,
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://i2.wp.com/digital-photography-school.com/wp-content/uploads/2019/01/guillermo-sanchez-529739-unsplash.jpg?fit=1500%2C1001&ssl=1'),
                ),
                SizedBox(height: 12),
                Text(
                  'User Name',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                Text(
                  'User Email',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );
  Widget buildMenuItens(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_rounded),
              title: Text('Pagina 1'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_rounded),
              title: Text('Pagina 2'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina2()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.list_alt_rounded),
              title: Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
}
