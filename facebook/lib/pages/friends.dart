import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  final List<Map<String, String>> friends = [
    {
      'name': 'Jerson Asentista',
      'followers': 'Followed by 1.4K',
      'image': 'assets/profile/alice.jpg'
    },
    {
      'name': 'Kent Cedric Pacios',
      'followers': 'Followed by 800',
      'image': 'assets/profile/bob.jpg'
    },
    {
      'name': 'Danaya Fernandez',
      'followers' : 'Followed by 6969',
      'image': 'assets/profile/bob.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Friends')),
      body: SingleChildScrollView(
        child: Column(
          children: friends.map((friend) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(friend['image']!),
                  ),
                  const SizedBox(width: 12),

                  // Name and followers
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          friend['name']!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        if (friend['followers']!.isNotEmpty)
                          Text(
                            friend['followers']!,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade600),
                          ),
                      ],
                    ),
                  ),

                  // Action buttons
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added ${friend['name']}')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                        ),
                        child: const Text('Add Friend'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Removed ${friend['name']}')),
                          );
                        },
                        child: const Text('Remove'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}