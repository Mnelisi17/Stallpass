
import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key);

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> announcements = [
      {
        'title': 'MANDATORY WORKSHOP FOR NEW STUDENTS',
        'date_time': '19 AUGUST 2023 | 10:00',
        'location': 'LOCATION: B301, Engineering Building',
      },
      {
        'title': 'EVENT REGISTRATIONS NOW DIGITAL!',
        'date_time': '20 AUGUST 2023 | 12:30',
        'location': 'LOCATION: Online Portal',
      },
      {
        'title': 'COMING BOOTCAMP ALERT',
        'date_time': '15 SEPTEMBER 2023 | 09:00',
        'location': 'LOCATION: Sports Hall',
      },
      {
        'title': 'GUEST LECTURE SERIES',
        'date_time': '05 OCTOBER 2023 | 14:00',
        'location': 'LOCATION: Auditorium A',
      },
      // Add more dummy data as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Department Announcements',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF3F51B5), // Dark blue from Figma
        iconTheme: const IconThemeData(color: Colors.white), // For back button if present
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Select Department TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Select Department',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              readOnly: true, // Typically read-only for a selection dropdown
              onTap: () {
                // Implement department selection logic (e.g., show a dropdown or dialog)
                print('Select Department tapped');
              },
            ),
            const SizedBox(height: 20),

            // Announcements List
            Expanded(
              child: ListView.builder(
                itemCount: announcements.length,
                itemBuilder: (context, index) {
                  final announcement = announcements[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            announcement['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3F51B5), // Dark blue
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            announcement['date_time']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            announcement['location']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                // Implement view more logic for this announcement
                                print('View More tapped for: ${announcement['title']}');
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF3F51B5), // Dark blue
                              ),
                              child: const Text('View More'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // QR Scan Button at the bottom
            ElevatedButton(
              onPressed: () {
                // Navigate to the QR Scan page
                // Assuming you have defined '/qr_scan' route in main.dart
                Navigator.pushNamed(context, '/qr_scan');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5), // Dark blue
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'QR Scan',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}