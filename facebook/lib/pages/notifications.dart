import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof1.jpg'),
            ),
            title: const Text('Alex Helledo liked your post.'),
            subtitle: const Text('2 hrs ago'),
            trailing: const Icon(Icons.more_vert),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof1.jpg'),
            ),
            title: const Text('Kyla Cienxa liked your post.'),
            subtitle: const Text('3 hrs ago'),
            trailing: const Icon(Icons.more_vert),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof1.jpg'),
            ),
            title: const Text('Rae Carti liked your post.'),
            subtitle: const Text('6 hrs ago'),
            trailing: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
