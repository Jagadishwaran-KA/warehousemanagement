import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Receiptdetails extends StatelessWidget {
  const Receiptdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF161616),
      width: double.infinity,
      padding: EdgeInsets.only(top: 6,left: 6),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cheese Merchants Live',
              style: GoogleFonts.urbanist(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Work Date',
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                  Text('23/08/25',
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 12,),
          Container(
              width: double.infinity,
              height: 500,
              padding: EdgeInsets.only(left: 8,top: 8),
              decoration: BoxDecoration(
                color: Color(0xFF222222),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text('PO # - 12356', style: TextStyle(fontSize: 26,color: Colors.white,fontStyle: FontStyle.italic),),
                  Text('Document Date - 12/35/2026', style: TextStyle(fontSize: 26,color: Colors.white,fontStyle: FontStyle.italic),),
                  Text('Shipment Agent - Fedex', style: TextStyle(fontSize: 26,color: Colors.white,fontStyle: FontStyle.italic),),
                  Text('Due Date - 12/22/2026', style:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),),
                  Text('Quantity - 120', style: TextStyle(fontSize: 26, color: Colors.white,fontStyle: FontStyle.italic),),
                  Text('Quantity Received - 80', style: TextStyle(fontSize: 26,color: Colors.white,fontStyle: FontStyle.italic),),
                  SizedBox(height: 18,),
                  ElevatedButton.icon(
                    onPressed: () {
                      SnackBar(
                        content: Text('Need to implement Receipt Page!'),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD6ED6A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    ),
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined, // You can choose any icon
                      color: Colors.black,
                      size: 28,
                    ),
                    label: const Text(
                      'Receipt',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
