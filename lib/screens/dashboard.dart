import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehousemanagement/main.dart';
import 'Inbound.dart';
import 'package:warehousemanagement/component/bottomSheet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Good Evening, Jagadish', style:
                  GoogleFonts.urbanist(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  )
                  ,),
                Text('Work Date',
                style:
                  GoogleFonts.urbanist(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cheese Merchants Live', style:
                GoogleFonts.urbanist(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )),
                Text('12/05/2025',style:
                GoogleFonts.urbanist(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              spacing: 14,
              children: [
                DashCard(title: 'Inbound',count: '37',imageAsset: 'images/boxsingle.png',backgroundColor: 0xFF222222,textColor: 0xFFFFFFFF,iconButtonColor: 0xFFD5ED6A,),
                DashCard(title: 'Outbound',count: '45',imageAsset: 'images/boxsingle.png',backgroundColor: 0xFFD5ED6A,textColor: 0xFF000000,iconButtonColor: 0xFF000000)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Quick Scan',
                  style: GoogleFonts.urbanist(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  ),
                ),
                TextField(
                  style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  ),
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF222222),
                  hintText: 'Scan Anything!',
                  hintStyle: GoogleFonts.urbanist(
                    color: Colors.white
                  ),
                  suffixIcon: Icon(Icons.qr_code_rounded, size: 30,color: Colors.white,),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF444444), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD6ED6A), width: 2),
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF303030),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Text('Location Code', style: GoogleFonts.urbanist(fontSize: 28,color: Colors.white, fontWeight: FontWeight.w600),),
                      Icon(Icons.location_on_outlined, color: Colors.white,size: 28,),
                    ]
                  ),
                  Text('Aptean Warehouse', style: GoogleFonts.urbanist(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFD6ED6A),
                  ),),
                  Row(
                    spacing: 18,
                    children: [
                      Text('Inventory - 1200', style: GoogleFonts.urbanist(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      TextButton(onPressed: (){},
                      child: Text('Show Bin Info!', style: TextStyle(fontSize: 16, color:Color(0xFFD6ED6A)),))
                    ],
                  )
                ]
              ),
            )
          ],
        ),
    );
  }
}

class DashCard extends StatelessWidget {
  const DashCard({super.key, required this.title,required this.count,required this.imageAsset,required this.backgroundColor,required this.textColor, required this.iconButtonColor});
  final String title, count, imageAsset;
  final int backgroundColor,textColor,iconButtonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => MainLayout(child: Inbound(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: true,
              enableDrag: true,
              backgroundColor: Color(0xFFD6ED6A),
              builder: (context) => const CustomBottomSheet(),
            );
          },
          backgroundColor: Color(0xFFD6ED6A),
          child: const Icon(Icons.filter_list_outlined),
        ),
        ),),)
      },
      child: Container(
        width: 185,
        height: 200,
        padding: EdgeInsets.only(left: 7,top: 7),
        decoration: BoxDecoration(
            color: Color(backgroundColor),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 45,height: 45,fit: BoxFit.contain,color: Color(textColor),),
            Text(title,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 35,
                      color: Color(textColor),
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1
                  )
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(count,
                  textAlign: TextAlign.end,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 35,
                      color: Color(textColor),
                    ),
                  ),
                ), IconButton(onPressed: null, icon: Icon(Icons.arrow_forward, size: 36,color: Color(iconButtonColor),))
                ]
            ),
          ],
        ),
      ),
    );
  }
}



