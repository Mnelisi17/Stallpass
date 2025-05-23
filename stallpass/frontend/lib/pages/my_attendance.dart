import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  Widget attendanceItem(String date, String event, bool attended) {
    return ListTile(
      leading: Icon(attended ? Icons.check_circle : Icons.cancel, size: 32, color: attended ? Colors.black : Colors.black),
      title: Text(date),
      subtitle: Text(event),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Attendance'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Student:12345678", style: TextStyle(fontSize: 14)),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Attendance Timeline", style: TextStyle(color: Colors.blue, fontSize: 20)),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  attendanceItem("26/04/2025", "Huawei Hackathon", true),
                  attendanceItem("05/05/2025", "IT Database Challenge", true),
                  attendanceItem("09/05/2025", "Algorithms Session 1", false),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to upcoming events
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: const Text("See Upcoming Events"),
            ),
          ],
        ),
      ),
    );
  }
}
