import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  final String studentName = "Ofenste";
  final int attended = 12;
  final int missed = 2;
  final List<Map<String, String>> events = [
    {"date": "26/04/2025", "title": "Huawei Hackathon"},
    {"date": "05/05/2025", "title": "IT Database Challenge"},
    {"date": "09/05/2025", "title": "Algorithms Session 1"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 36,
                backgroundColor: Colors.deepPurple.shade100,
                child: const Icon(Icons.person, size: 40, color: Colors.deepPurple),
              ),
              const SizedBox(height: 12),
              Text(
                "Hi, $studentName 👋",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Here’s a look at your attendance so far!",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _statCard("Attended", attended, Colors.green),
                  _statCard("Missed", missed, Colors.red),
                ],
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Events",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade700,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ...events.map((event) => _eventTile(event)).toList(),
              const SizedBox(height: 24),
              Text(
                attended > missed
                    ? "Great job! Keep up the good attendance! 🎉"
                    : "Let’s try to attend more events next time!",
                style: TextStyle(
                  fontSize: 16,
                  color: attended > missed ? Colors.green : Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statCard(String label, int value, Color color) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            Text(
              "$value",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(fontSize: 15, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Widget _eventTile(Map<String, String> event) {
    return ListTile(
      leading: const Icon(Icons.check_circle, color: Colors.green),
      title: Text(event["title"] ?? ""),
      subtitle: Text(event["date"] ?? ""),
      trailing: const Text(
        "Present",
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
    );
  }
}