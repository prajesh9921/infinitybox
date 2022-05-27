import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
                children: [
                  ListTile(
                    title: Center(child: const Text('Home')),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  ListTile(
                    title: Center(child: const Text('Create Batch')),
                    onTap: () {
                      Navigator.pushNamed(context, '/batch_creation');
                    },
                  ),
                  ListTile(
                    title: Center(child: const Text('Create Order')),
                    onTap: () {
                      Navigator.pushNamed(context, '/order_creation');
                    },
                  ),
                  ListTile(
                    title: Center(child: const Text('Collection Agent')),
                    onTap: () {
                      Navigator.pushNamed(context, '/agent');
                    },
                  ),
                  ListTile(
                    title: Center(child: const Text('Receivd Container')),
                    onTap: () {
                      Navigator.pushNamed(context, '/received_container');
                    },
                  ),
                ],
              ),
          );
  }
}
