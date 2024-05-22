import 'package:flutter/material.dart';

class Different extends StatelessWidget {
  const Different({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Different'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Prakahr Shukla'),
              accountEmail: Text('prakharwork@proton.me'),
              currentAccountPicture: CircleAvatar(
                child: Text('P'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'HomePage',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_rounded),
            label: 'explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
