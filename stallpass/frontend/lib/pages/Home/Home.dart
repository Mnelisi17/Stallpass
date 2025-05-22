import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> announcements = [
    {
      'title': 'GET READY FOR OPEN DAY! SCAN TO ENGAGE!',
      'date': '10 January 2025',
      'time': '14:10'
    },
    {
      'title': 'TM/AST ATTENDANCE NOW DIGITAL!',
      'date': '15 March 2025',
      'time': '12:25'
    },
    {
      'title': 'CODING BOOTCAMP ALERT',
      'date': '15 April 2025',
      'time': '10:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Department Announcements'),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Select Department'),
              items: ['IT', 'HR', 'Marketing']
                  .map((dep) => DropdownMenuItem(value: dep, child: Text(dep)))
                  .toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: announcements.length,
                itemBuilder: (context, index) {
                  final item = announcements[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(item['title'] ?? ''),
                      subtitle: Text('${item['date']} • ${item['time']}'),
                      trailing: Text('View More', style: TextStyle(color: Colors.blue)),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('QR Scan'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            )
          ],
        ),
      ),
    );
  }
}