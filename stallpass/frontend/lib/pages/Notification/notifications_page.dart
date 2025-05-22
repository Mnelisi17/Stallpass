import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  final List<Map<String, String>> notifications = const [
    {
      'title': 'Spring Fest: Music, Food & Fun This Friday!',
      'time': '14:10',
      'body': 'Dear Student,\nGet ready to unwind and celebrate the season—'
    },
    {
      'title': 'Wellness Workshop: Stress Management Tips',
      'time': '12:25',
      'body': 'Dear Student,\nFeeling overwhelmed? Join us for a Wellness Workshop.'
    },
    {
      'title': 'Free Health Check-up on Campus',
      'time': '10:00',
      'body': 'Dear Student,\nFeeling overwhelmed? Join us for a Wellness Workshop.'
    },
    {
      'title': 'Hackathon 2025 Registration Open',
      'time': '08:30',
      'body': 'Dear Student,\nUnleash your coding skills and creativity—Hackathon!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: const Color(0xFF3F51B5), // Blue
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final note = notifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 2,
            child: ListTile(
              title: Text(
                note['title']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
              subtitle: Text(note['body']!),
              trailing: Text(
                note['time']!,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add notification logic here
        },
        backgroundColor: const Color(0xFF3F51B5),
        child: const Icon(Icons.add),
      ),
    );
  }
}
