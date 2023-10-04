import 'package:flutter/material.dart';

import '../utils/navigation_drawer.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationMenuDrawer(),
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
    );
  }
}
