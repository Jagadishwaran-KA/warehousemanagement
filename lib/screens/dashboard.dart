import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
        child: Column(
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

