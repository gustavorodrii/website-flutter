import 'package:ecommerceprovider/responsive/desktop_body.dart';
import 'package:ecommerceprovider/responsive/mobile_body.dart';
import 'package:ecommerceprovider/responsive/responsive_layout.dart';
import 'package:ecommerceprovider/utils/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      drawer: NavigationMenuDrawer(),
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
