import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class BCLoginPage extends StatelessWidget {
  const BCLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Lottie.asset(
              'images/Inventory.json',
              backgroundLoading: true,
              width: 400,
              height: 300, fit: BoxFit.cover, animate: true
            ),
           Container(
             margin: EdgeInsets.only(top: 30),
             child: Text(
                  'Inventra',
                  style: GoogleFonts.robotoMono(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
           ),
            TextBox(labelTitle: 'Tenant Id',icon: Icon(Icons.account_circle_outlined,color: Colors.black,),),
            TextBox(labelTitle: 'Client Id',icon: Icon(Icons.account_circle_outlined,color: Colors.black,),),
            TextBox(labelTitle: 'Company Url',icon: Icon(Icons.link,color: Colors.black,),),
            SizedBox(height: 10,),
            FilledButton.tonal(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.amber),
                minimumSize: WidgetStateProperty.all(const Size(400, 60)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // rounded corners
                  ),
                ),
              ),
              child:  Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  color: Colors.black87,
                ),
              ),
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
                  backgroundColor: Colors.green,
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
    );
  }
}

class TextBox extends StatelessWidget {

  const TextBox({super.key, required this.labelTitle,required this.icon});
  final String labelTitle;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.only(top: 12,left: 6,right: 6),
      child: TextField(
          decoration: InputDecoration(
            prefixIcon: icon,
            labelText: labelTitle,
            labelStyle: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.5),
            ),
          )
      ),
    );
  }
}

