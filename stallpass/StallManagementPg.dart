import 'package:flutter/material.dart';

void main() {
  runApp(StallManagementApp());
}

class StallManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StallPass',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StallManagementPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StallManagementPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STALL MANAGEMENT'),
        backgroundColor: Colors.indigo,
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 200,
            color: Colors.indigo.shade900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Ms Lowermain"),
                  accountEmail: Text("Admin"),
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
                ListTile(
                    title: Text("Dashboard",
                        style: TextStyle(color: Colors.white))),
                ListTile(
                    title: Text("Stall Management",
                        style: TextStyle(color: Colors.white))),
                ListTile(
                    title: Text("Open Stalls",
                        style: TextStyle(color: Colors.white))),
                ListTile(
                    title: Text("Closed Stalls",
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Create Stall Form
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create Stall:",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          TextField(
                              controller: nameController,
                              decoration:
                                  InputDecoration(labelText: "Stall Name")),
                          TextField(
                              controller: dateController,
                              decoration: InputDecoration(labelText: "Date")),
                          TextField(
                              controller: locationController,
                              decoration:
                                  InputDecoration(labelText: "Location")),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Handle stall creation here
                            },
                            child: Text("Create Stall"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Open/Closed Tabs
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          tabs: [
                            Tab(text: "OPEN STALLS"),
                            Tab(text: "CLOSED STALLS"),
                          ],
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.grey,
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              // Open Stalls
                              ListView(
                                children: [
                                  StallTile(title: "CPUT Open Day"),
                                  StallTile(
                                      title:
                                          "ABSA Group: Education and Skill Development"),
                                ],
                              ),

                              // Closed Stalls
                              Center(child: Text("No Closed Stalls")),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StallTile extends StatelessWidget {
  final String title;

  StallTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: ElevatedButton(
        onPressed: () {
          // View history action
        },
        child: Text("View History"),
      ),
    );
  }
}
