
import 'package:flutter/material.dart';

class QRScanPage extends StatelessWidget {
  const QRScanPage({Key? key}) : super(key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF3F51B5),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Scan your QR Code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Placeholder for the QR Code Scanner view
              Container(
                width: MediaQuery.of(context).size.width * 0.75, // Responsive width
                height: MediaQuery.of(context).size.width * 0.75, // Square aspect ratio
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0), // Slightly rounded corners
                ),
                child: Center(
                  // This is where your actual QR scanner widget would go
                  // Example:
                  // child: MobileScanner(
                  //   onDetect: (barcode, args) {
                  //     // Handle barcode detection
                  //   },
                  // ),
                  child: Image.asset(
                    'assets/placeholder_qr_code.png', // You'll need to add a placeholder image in assets
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Scan QR Code Button
              ElevatedButton(
                onPressed: () {
                  // Implement actual QR scanning logic here
                  print('Scan QR Code button pressed');
                  // Typically, this would activate the scanner or trigger a scan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F51B5), // Dark blue
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Scan QR Code',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),

              // Confirm Attendance Button
              ElevatedButton(
                onPressed: () {
                  // Implement attendance confirmation logic here
                  print('Confirm Attendance button pressed');
                  // This would typically involve sending the scanned QR data to a backend
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700], // A slightly darker grey
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Confirm Attendance',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}