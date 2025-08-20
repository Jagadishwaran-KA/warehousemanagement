import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top Image
                Image.asset(
                  'images/background-removebg-preview.png',
                  fit: BoxFit.cover,
                  height: 400,
                  width: 400,
                ),
              const SizedBox(height: 20),
              // Title
              Text(
                'Warehouse Management System',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 25),

              // Company URL TextField
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.link, color: Colors.blue),
                  label: Text('Enter Company URL'),
                  hintText: 'https://your_company_url',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                )
              ),

              const SizedBox(height: 12),

              // Divider with "or"
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.grey[600],
                      fontSize: 24),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1)),
                ],
              ),

              const SizedBox(height: 20),

              // Modern Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Action
                  },
                  icon: Icon(Icons.qr_code_scanner, size: 24, color: Colors.black),
                  label: Text(
                    "   Scan QR",
                    style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Color(0xFFfebe2f),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 2, // shadow effect
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
